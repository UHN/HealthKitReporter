//
//  Extensions+HKCategorySample.swift
//  HealthKitReporter
//
//  Created by Victor on 15.09.20.
//

import HealthKit

extension HKCategorySample: Harmonizable {
    typealias Harmonized = Category.Harmonized
    
    func harmonize() throws -> Harmonized {
        var description = String()
        var detail = String()
        let type = try categoryType.parsed()
        switch type {
        case .abdominalCramps,
             .acne,
             .appetiteChanges,
             .bloating,
             .breastPain,
             .chestTightnessOrPain,
             .chills,
             .constipation,
             .coughing,
             .diarrhea,
             .dizziness,
             .fainting,
             .fatigue,
             .fever,
             .generalizedBodyAche,
             .headache,
             .heartburn,
             .hotFlashes,
             .lossOfSmell,
             .lossOfTaste,
             .lowerBackPain,
             .moodChanges,
             .nausea,
             .pelvicPain,
             .rapidPoundingOrFlutteringHeartbeat,
             .runnyNose,
             .shortnessOfBreath,
             .sinusCongestion,
             .skippedHeartbeat,
             .sleepChanges,
             .soreThroat,
             .vomiting,
             .wheezing:
            if #available(iOS 13.6, *) {
                if let value = HKCategoryValuePresence(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .appleStandHour:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValueAppleStandHour(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .appleWalkingSteadinessEvent:
            if #available(iOS 15.0, *) {
                if let value = HKCategoryValueAppleWalkingSteadinessEvent(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .audioExposureEvent:
            if #available(iOS 13.0, *) {
                if let value = HKCategoryValueAudioExposureEvent(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .bleedingAfterPregnancy:
            if #available(iOS 18.0, *) {
                if let value = HKCategoryValuePresence(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .bleedingDuringPregnancy:
            if #available(iOS 18.0, *) {
                if let value = HKCategoryValuePresence(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .bladderIncontinence,
             .drySkin,
             .hairLoss,
             .memoryLapse,
             .nightSweats,
             .vaginalDryness:
            if #available(iOS 14.0, *) {
                if let value = HKCategoryValuePresence(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .cervicalMucusQuality:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValueCervicalMucusQuality(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .contraceptive:
            if #available(iOS 14.3, *) {
                if let value = HKCategoryValueContraceptive(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .environmentalAudioExposureEvent:
            if #available(iOS 14.0, *) {
                if let value = HKCategoryValueEnvironmentalAudioExposureEvent(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .handwashingEvent:
            if #available(iOS 14.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .headphoneAudioExposureEvent:
            if #available(iOS 14.2, *) {
                if let value = HKCategoryValueHeadphoneAudioExposureEvent(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .highHeartRateEvent:
            if #available(iOS 12.2, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .hypertensionEvent:
            if #available(iOS 26.2, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .infrequentMenstrualCycles,
             .irregularMenstrualCycles,
             .persistentIntermenstrualBleeding,
             .prolongedMenstrualPeriods:
            if #available(iOS 16.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .intermenstrualBleeding:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .irregularHeartRhythmEvent:
            if #available(iOS 12.2, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .lactation:
            if #available(iOS 14.3, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .lowCardioFitnessEvent:
            if #available(iOS 14.3, *) {
                if let value = HKCategoryValueLowCardioFitnessEvent(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .lowHeartRateEvent:
            if #available(iOS 12.2, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .menstrualFlow:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValueMenstrualFlow(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .mindfulSession:
            if #available(iOS 10.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .ovulationTestResult:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValueOvulationTestResult(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .pregnancy:
            if #available(iOS 14.3, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .pregnancyTestResult:
            if #available(iOS 15.0, *) {
                if let value = HKCategoryValuePregnancyTestResult(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .progesteroneTestResult:
            if #available(iOS 15.0, *) {
                if let value = HKCategoryValueProgesteroneTestResult(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .sexualActivity:
            if #available(iOS 9.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .sleepAnalysis:
            if let value = HKCategoryValueSleepAnalysis(rawValue: value) {
                description = value.description
                detail = value.detail
            }
        case .sleepApneaEvent:
            if #available(iOS 18.0, *) {
                if let value = HKCategoryValuePresence(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        case .toothbrushingEvent:
            if #available(iOS 13.0, *) {
                if let value = HKCategoryValue(rawValue: value) {
                    description = value.description
                    detail = value.detail
                }
            } else {
                throw HealthKitError.notAvailable(
                    "\(type) is not available for the current iOS"
                )
            }
        }
        return category(description: description, detail: detail)
    }
    
    private func category(description: String, detail: String) -> Harmonized {
        return Harmonized(
            value: value,
            description: description,
            detail: detail,
            metadata: metadata?.asMetadata
        )
    }
}
