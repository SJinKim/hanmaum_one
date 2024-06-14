//
//  UserCard.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 14.06.24.
//

import Foundation

struct UserCard: Identifiable {
    let id = UUID()
    let name: String
    let birthday: String
    let 양육: String
}
