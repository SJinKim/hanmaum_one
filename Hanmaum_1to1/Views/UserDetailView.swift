//
//  UserDetailView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 14.06.24.
//

import SwiftUI

struct UserDetailView: View {
    let usercard: UserCard
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    UserDetailView(usercard: UserCard(name: "User1", birthday: "1990-01-01", 양육: "세례"))
}
