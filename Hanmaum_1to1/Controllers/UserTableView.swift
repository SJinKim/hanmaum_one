//
//  UserTableView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 14.06.24.
//

import SwiftUI

struct UserTableView: View {
    @State private var usercards = [
        UserCard(name: "User1", birthday: "1990-01-01", 양육: "222"),
        UserCard(name: "User2", birthday: "1999-01-02", 양육: "111")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(usercards) { usercard in
                    UserListView(usercard: usercard)
                }
                .onDelete { indexSet in
                    usercards.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    usercards.move(fromOffsets: indices, toOffset: newOffset)
                }
                .padding()
            }
            .navigationTitle("동반자 목록")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

#Preview {
    UserTableView()
}
