//
//  User.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import Foundation

struct User : Codable, Hashable, Identifiable {
    let id: UUID
    let name: String
    let email: String
    let birthdayDate: Date
    let startDate: Date
    let endDate: Date
    let progressStatus: String
    let partnerUser: String
    let christening: String
}

