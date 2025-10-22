//
//  Metadata.swift
//  HealthKitReporter
//
//  Created by Victor Kachalov on 29.10.22.
//

import Foundation
public enum MetadataValue: Codable, Equatable, ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByStringInterpolation {
    // Literal conformances to allow writing plain values in dictionaries
    public init(stringLiteral value: StringLiteralType) {
        self = .string(value)
    }
    public init(stringInterpolation: DefaultStringInterpolation) {
        self = .string(String(stringInterpolation: stringInterpolation))
    }
    public init(integerLiteral value: IntegerLiteralType) {
        self = .int(value)
    }
    public init(floatLiteral value: FloatLiteralType) {
        self = .double(value)
    }

    case string(String)
    case date(Date)
    case double(Double)
    case int(Int)
    
    private enum CodingKeys: String, CodingKey {
        case type
        case value
    }
    
    private enum ValueType: String, Codable {
        case string
        case date
        case double
        case int
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(ValueType.self, forKey: .type)
        switch type {
        case .string:
            let value = try container.decode(String.self, forKey: .value)
            self = .string(value)
        case .date:
            let dateString = try container.decode(String.self, forKey: .value)
            let formatter = ISO8601DateFormatter()
            if let date = formatter.date(from: dateString) {
                self = .date(date)
            } else {
                throw DecodingError.dataCorruptedError(forKey: .value, in: container, debugDescription: "Invalid ISO8601 date string: \(dateString)")
            }
        case .double:
            let value = try container.decode(Double.self, forKey: .value)
            self = .double(value)
        case .int:
            let value = try container.decode(Int.self, forKey: .value)
            self = .int(value)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .string(let string):
            try container.encode(ValueType.string, forKey: .type)
            try container.encode(string, forKey: .value)
        case .date(let date):
            try container.encode(ValueType.date, forKey: .type)
            let formatter = ISO8601DateFormatter()
            let dateString = formatter.string(from: date)
            try container.encode(dateString, forKey: .value)
        case .double(let double):
            try container.encode(ValueType.double, forKey: .type)
            try container.encode(double, forKey: .value)
        case .int(let int):
            try container.encode(ValueType.int, forKey: .type)
            try container.encode(int, forKey: .value)
        }
    }
}

public struct Metadata: Codable, Equatable, ExpressibleByDictionaryLiteral {
    public var dictionary: [String: MetadataValue]
    
    public var original: [String: Any]? {
        guard !dictionary.isEmpty else { return nil }
        var result: [String: Any] = [:]
        for (key, value) in dictionary {
            switch value {
            case .string(let str):
                result[key] = str
            case .date(let date):
                result[key] = date
            case .double(let dbl):
                result[key] = dbl
            case .int(let int):
                result[key] = int
            }
        }
        return result
    }
    
    public init(dictionary: [String: MetadataValue]) {
        self.dictionary = dictionary
    }
    
    public init(dictionaryLiteral elements: (String, MetadataValue)...) {
        var dict = [String: MetadataValue]()
        for (key, value) in elements {
            dict[key] = value
        }
        self.dictionary = dict
    }
}

// MARK: - Metadata: Payload
extension Metadata: Payload {
    public static func make(from dictionary: [String : Any]) throws -> Metadata {
        var metaDict: [String: MetadataValue] = [:]
        for (key, value) in dictionary {
            switch value {
            case let string as String:
                metaDict[key] = .string(string)
            case let date as Date:
                metaDict[key] = .date(date)
            case let double as Double:
                metaDict[key] = .double(double)
            case let int as Int:
                metaDict[key] = .int(int)
            default:
                throw HealthKitError.invalidValue("Unsupported value for key \(key): \(type(of: value))")
            }
        }
        return Metadata(dictionary: metaDict)
    }
}

