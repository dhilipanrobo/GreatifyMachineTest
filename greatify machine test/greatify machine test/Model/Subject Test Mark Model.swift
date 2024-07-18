//
//  Subject Test Mark Model.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//


import Foundation
import SwiftUI
struct SubjectTestMark:Hashable {
    var subject : String
    var mark : String
    var totalMark : String
}
struct SemesterResult:Hashable {
    var seme : String
    var grade : String
    var percentage : String
}
struct UpcomingTests:Hashable {
    var subject : String
    var date : String
    var totalMark : String
}

