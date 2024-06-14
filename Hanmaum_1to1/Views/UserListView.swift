//
//  UserListView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 14.06.24.
//

import SwiftUI

struct UserListView: View {
    let usercard: UserCard
    
    var body: some View {
        NavigationLink(destination: UserDetailView(usercard: usercard)) {
            HStack {
                Rectangle()
                    .frame(width: 70, height: 70)
                    .cornerRadius(5)
                    .padding(.leading, 8)
                VStack{
                    Text(usercard.name)
                        .font(.headline)
                        .lineLimit(1)
                    Text(usercard.birthday)
                        .font(.headline)
                        .lineLimit(1)
                }
                Spacer()
                Text(usercard.양육)
                    .font(.headline)
                    .lineLimit(1)
                Spacer()
            }
            .padding(.vertical, 8)
        }
    }
}

#Preview {
    UserListView(usercard: UserCard(name: "User1", birthday: "1990-01-01", 양육: "세례"))
}
