//
//  CategoryType.swift
//  HealthKitReporter
//
//  Created by Victor on 05.10.20.
//

import HealthKit

/**
 All HealthKit category types
 */
public enum CategoryType: Int, CaseIterable, SampleType {
    case abdominalCramps
    case acne
    case appleStandHour
    case appleWalkingSteadinessEvent
    case appetiteChanges
    case audioExposureEvent
    case bleedingAfterPregnancy
    case bleedingDuringPregnancy
    case bladderIncontinence
    case bloating
    case breastPain
    case cervicalMucusQuality
    case chestTightnessOrPain
    case chills
    case constipation
    case contraceptive
    case coughing
    case diarrhea
    case dizziness
    case drySkin
    case environmentalAudioExposureEvent
    case fainting
    case fatigue
    case fever
    case generalizedBodyAche
    case hairLoss
    case handwashingEvent
    case headache
    case headphoneAudioExposureEvent
    case heartburn
    case highHeartRateEvent
    case hotFlashes
    case hypertensionEvent
    case infrequentMenstrualCycles
    case irregularHeartRhythmEvent
    case irregularMenstrualCycles
    case intermenstrualBleeding
    case lactation
    case lossOfSmell
    case lossOfTaste
    case lowCardioFitnessEvent
    case lowHeartRateEvent
    case lowerBackPain
    case memoryLapse
    case menstrualFlow
    case mindfulSession
    case moodChanges
    case nausea
    case nightSweats
    case ovulationTestResult
    case pelvicPain
    case persistentIntermenstrualBleeding
    case pregnancy
    case pregnancyTestResult
    case progesteroneTestResult
    case prolongedMenstrualPeriods
    case rapidPoundingOrFlutteringHeartbeat
    case runnyNose
    case sexualActivity
    case shortnessOfBreath
    case sinusCongestion
    case skippedHeartbeat
    case sleepAnalysis
    case sleepApneaEvent
    case sleepChanges
    case soreThroat
    case toothbrushingEvent
    case vaginalDryness
    case vomiting
    case wheezing

    public var identifier: String? {
        return original?.identifier
    }

    public var original: HKObjectType? {
        switch self {
        case .abdominalCramps:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .abdominalCramps)
            }
        case .acne:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .acne)
            }
        case .appleStandHour:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .appleStandHour)
            }
        case .appleWalkingSteadinessEvent:
            if #available(iOS 15.0, *) {
                return HKObjectType.categoryType(forIdentifier: .appleWalkingSteadinessEvent)
            }
        case .appetiteChanges:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .appetiteChanges)
            }
        case .audioExposureEvent:
            if #available(iOS 13.0, *) {
                return HKObjectType.categoryType(forIdentifier: .audioExposureEvent)
            }
        case .bleedingAfterPregnancy:
            if #available(iOS 18.0, *) {
                return HKObjectType.categoryType(forIdentifier: .bleedingAfterPregnancy)
            }
        case .bleedingDuringPregnancy:
            if #available(iOS 18.0, *) {
                return HKObjectType.categoryType(forIdentifier: .bleedingDuringPregnancy)
            }
        case .bladderIncontinence:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .bladderIncontinence)
            }
        case .bloating:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .bloating)
            }
        case .breastPain:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .breastPain)
            }
        case .cervicalMucusQuality:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .cervicalMucusQuality)
            }
        case .chestTightnessOrPain:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .chestTightnessOrPain)
            }
        case .chills:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .chills)
            }
        case .constipation:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .constipation)
            }
        case .contraceptive:
            if #available(iOS 14.3, *) {
                return HKObjectType.categoryType(forIdentifier: .contraceptive)
            }
        case .coughing:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .coughing)
            }
        case .diarrhea:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .diarrhea)
            }
        case .dizziness:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .dizziness)
            }
        case .drySkin:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .drySkin)
            }
        case .environmentalAudioExposureEvent:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .environmentalAudioExposureEvent)
            }
        case .fainting:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .fainting)
            }
        case .fatigue:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .fatigue)
            }
        case .fever:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .fever)
            }
        case .generalizedBodyAche:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .generalizedBodyAche)
            }
        case .hairLoss:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .hairLoss)
            }
        case .handwashingEvent:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .handwashingEvent)
            }
        case .headache:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .headache)
            }
        case .headphoneAudioExposureEvent:
            if #available(iOS 14.2, *) {
                return HKObjectType.categoryType(forIdentifier: .headphoneAudioExposureEvent)
            }
        case .heartburn:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .heartburn)
            }
        case .highHeartRateEvent:
            if #available(iOS 12.2, *) {
                return HKObjectType.categoryType(forIdentifier: .highHeartRateEvent)
            }
        case .hotFlashes:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .hotFlashes)
            }
        case .hypertensionEvent:
            if #available(iOS 26.2, *) {
                return HKObjectType.categoryType(forIdentifier: .hypertensionEvent)
            }
        case .infrequentMenstrualCycles:
            if #available(iOS 16.0, *) {
                return HKObjectType.categoryType(forIdentifier: .infrequentMenstrualCycles)
            }
        case .irregularHeartRhythmEvent:
            if #available(iOS 12.2, *) {
                return HKObjectType.categoryType(forIdentifier: .irregularHeartRhythmEvent)
            }
        case .irregularMenstrualCycles:
            if #available(iOS 16.0, *) {
                return HKObjectType.categoryType(forIdentifier: .irregularMenstrualCycles)
            }
        case .intermenstrualBleeding:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .intermenstrualBleeding)
            }
        case .lactation:
            if #available(iOS 14.3, *) {
                return HKObjectType.categoryType(forIdentifier: .lactation)
            }
        case .lossOfSmell:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .lossOfSmell)
            }
        case .lossOfTaste:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .lossOfTaste)
            }
        case .lowCardioFitnessEvent:
            if #available(iOS 14.3, *) {
                return HKObjectType.categoryType(forIdentifier: .lowCardioFitnessEvent)
            }
        case .lowHeartRateEvent:
            if #available(iOS 12.2, *) {
                return HKObjectType.categoryType(forIdentifier: .lowHeartRateEvent)
            }
        case .lowerBackPain:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .lowerBackPain)
            }
        case .memoryLapse:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .memoryLapse)
            }
        case .menstrualFlow:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .menstrualFlow)
            }
        case .mindfulSession:
            if #available(iOS 10.0, *) {
                return HKObjectType.categoryType(forIdentifier: .mindfulSession)
            }
        case .moodChanges:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .moodChanges)
            }
        case .nausea:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .nausea)
            }
        case .nightSweats:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .nightSweats)
            }
        case .ovulationTestResult:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .ovulationTestResult)
            }
        case .pelvicPain:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .pelvicPain)
            }
        case .persistentIntermenstrualBleeding:
            if #available(iOS 16.0, *) {
                return HKObjectType.categoryType(forIdentifier: .persistentIntermenstrualBleeding)
            }
        case .pregnancy:
            if #available(iOS 14.3, *) {
                return HKObjectType.categoryType(forIdentifier: .pregnancy)
            }
        case .pregnancyTestResult:
            if #available(iOS 15.0, *) {
                return HKObjectType.categoryType(forIdentifier: .pregnancyTestResult)
            }
        case .progesteroneTestResult:
            if #available(iOS 15.0, *) {
                return HKObjectType.categoryType(forIdentifier: .progesteroneTestResult)
            }
        case .prolongedMenstrualPeriods:
            if #available(iOS 16.0, *) {
                return HKObjectType.categoryType(forIdentifier: .prolongedMenstrualPeriods)
            }
        case .rapidPoundingOrFlutteringHeartbeat:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .rapidPoundingOrFlutteringHeartbeat)
            }
        case .runnyNose:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .runnyNose)
            }
        case .sexualActivity:
            if #available(iOS 9.0, *) {
                return HKObjectType.categoryType(forIdentifier: .sexualActivity)
            }
        case .shortnessOfBreath:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .shortnessOfBreath)
            }
        case .sinusCongestion:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .sinusCongestion)
            }
        case .skippedHeartbeat:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .skippedHeartbeat)
            }
        case .sleepAnalysis:
            return HKObjectType.categoryType(forIdentifier: .sleepAnalysis)
        case .sleepApneaEvent:
            if #available(iOS 18.0, *) {
                return HKObjectType.categoryType(forIdentifier: .sleepApneaEvent)
            }
        case .sleepChanges:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .sleepChanges)
            }
        case .soreThroat:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .soreThroat)
            }
        case .toothbrushingEvent:
            if #available(iOS 13.0, *) {
                return HKObjectType.categoryType(forIdentifier: .toothbrushingEvent)
            }
        case .vaginalDryness:
            if #available(iOS 14.0, *) {
                return HKObjectType.categoryType(forIdentifier: .vaginalDryness)
            }
        case .vomiting:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .vomiting)
            }
        case .wheezing:
            if #available(iOS 13.6, *) {
                return HKObjectType.categoryType(forIdentifier: .wheezing)
            }
        }
        return nil
    }
}
