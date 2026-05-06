//
//  Models.swift
//  RunPlanner
//
//  Created by Seree Saengchan on 6/5/2569 BE.
//

import Foundation

// MARK: - User Profile
struct UserProfile: Codable {
    let age: Int
    let gender: Gender
    let experienceMonths: Int
    let vo2max: Double?
}

enum Gender: String, Codable, CaseIterable {
    case male   = "male"
    case female = "female"
    
    var displayText: String {
        switch self {
        case .male:   return "ชาย"
        case .female: return "หญิง"
        }
    }
}


// MARK: - Run Goal
struct RunGoal: Codable {
    let distance: RunDistance
    let targetMinutes: Int
    
    var displayTitle: String {
        "\(distance.displayText) \(targetMinutes) นาที"
    }
    
    var jsonFilename: String {
        "program_\(distance.rawValue)_\(targetMinutes)min"
    }
}

enum RunDistance: String, Codable, CaseIterable {
    case fiveK = "5k"
    case tenK  = "10k"
    case halfMarathon = "21k"
    
    var displayText: String {
        switch self {
        case .fiveK:   return "5K"
        case .tenK:    return "10K"
        case .halfMarathon: return "21K"
        }
    }
}


// MARK: - Traning Program
struct TraningProgram: Codable {
    let goalID: String
    let totalWeeks: Int
    let weeks: [TrainingWeek]
}

struct TrainingWeek: Codable {
    let weekNumber: Int
    let days: [TrainingDay]
}

struct TrainingDay: Codable {
    let dayIndex: Int
    let type: DayType
    let runs: [Session]
    
    var dayDisplayText: String {
        let days = ["จ", "อ", "พ", "พฤ", "ศ", "ส", "อา"]
        return days[safe: dayIndex] ?? ""
    }
}

enum DayType: String, Codable {
    case run = "run"
    case weigth = "weight"
    case rest = "rest"
    
    var displayText: String {
        switch self {
        case .run:      return "วิ่ง"
        case .weigth:   return "เวทเทรนนิ่ง"
        case .rest:     return "พัก"
        }
    }
}

struct Session: Codable {
    let title: String
    let detail: String
    let durationMinutes: Int
}
