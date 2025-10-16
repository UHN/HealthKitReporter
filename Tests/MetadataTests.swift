//
//  MetadataTests.swift
//
//
//  Created by Victor Kachalov on 29.10.22.
//

import XCTest
import HealthKitReporter

class MetadataTests: XCTestCase {
    func testMetadataString() {
        let metadataExpressible: Metadata = ["HKWasUserEntered": "1"]
        let expected: Metadata = ["HKWasUserEntered": "1"]
        XCTAssertEqual(metadataExpressible, expected)
    }

    func testMetadataInt() {
        let metadata: Metadata = ["HKSampleCount": 3]
        XCTAssertEqual(metadata.dictionary["HKSampleCount"], .int(3))
    }

    func testMetadataDouble() {
        let metadataExpressible: Metadata = ["HKWasUserEnteredValue": 10.0]
        let expected: Metadata = ["HKWasUserEnteredValue": 10.0]
        XCTAssertEqual(metadataExpressible, expected)
        XCTAssertEqual(metadataExpressible.dictionary["HKWasUserEnteredValue"], .double(10.0))
    }

    func testMetadataDate() {
        let date = Date(timeIntervalSince1970: 1_690_000_000) // fixed date for determinism
        let metadataExpressible: Metadata = ["HKWasUserEnteredOn": .date(date)]
        let expected: Metadata = ["HKWasUserEnteredOn": .date(date)]
        XCTAssertEqual(metadataExpressible, expected)
        XCTAssertEqual(metadataExpressible.dictionary["HKWasUserEnteredOn"], .date(date))
    }

    func testDictionaryLiteralInitialization() {
        let meta: Metadata = [
            "string": "value",
            "int": 42,
            "double": 3.14,
            "date": .date(Date(timeIntervalSince1970: 0))
        ]
        XCTAssertEqual(meta.dictionary["string"], .string("value"))
        XCTAssertEqual(meta.dictionary["int"], .int(42))
        XCTAssertEqual(meta.dictionary["double"], .double(3.14))
        XCTAssertEqual(meta.dictionary["date"], .date(Date(timeIntervalSince1970: 0)))
    }

    func testExpressibleByStringInterpolation() {
        let number = 7
        let meta: Metadata = ["interpolated": "value-\(number)"]
        XCTAssertEqual(meta.dictionary["interpolated"], .string("value-7"))
    }

    func testOriginalMapping() throws {
        let date = Date(timeIntervalSince1970: 100)
        let meta: Metadata = [
            "s": "str",
            "i": 9,
            "d": 2.5,
            "t": .date(date)
        ]
        let original = try XCTUnwrap(meta.original)
        XCTAssertEqual(original["s"] as? String, "str")
        XCTAssertEqual(original["i"] as? Int, 9)
        XCTAssertEqual(original["d"] as? Double, 2.5)
        XCTAssertEqual(original["t"] as? Date, date)
    }

    func testCodableRoundTrip() throws {
        let date = Date(timeIntervalSince1970: 1_700_000_000)
        let meta: Metadata = [
            "s": "abc",
            "i": 1,
            "d": 2.0,
            "t": .date(date)
        ]
        let encoder = JSONEncoder()
        let data = try encoder.encode(meta)

        let decoder = JSONDecoder()
        let decoded = try decoder.decode(Metadata.self, from: data)
        XCTAssertEqual(decoded, meta)
    }

    func testPayloadMakeFromDictionarySuccess() throws {
        let date = Date(timeIntervalSince1970: 200)
        let input: [String: Any] = [
            "s": "x",
            "i": 2,
            "d": 3.0,
            "t": date
        ]
        let meta = try Metadata.make(from: input)
        XCTAssertEqual(meta.dictionary["s"], .string("x"))
        XCTAssertEqual(meta.dictionary["i"], .int(2))
        XCTAssertEqual(meta.dictionary["d"], .double(3.0))
        XCTAssertEqual(meta.dictionary["t"], .date(date))
    }

    func testPayloadMakeFromDictionaryUnsupportedTypeFails() {
        let input: [String: Any] = [
            "unsupported": ["a", "b"]
        ]
        do {
            _ = try Metadata.make(from: input)
            XCTFail("Expected error for unsupported type, but succeeded")
        } catch {
            // expected
        }
    }
}
