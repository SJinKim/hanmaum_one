//
//  MainView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        accountView
    }
    @ViewBuilder
    var accountView: some View {
        //if signed in
        TabView {
            HomeView()
                .tabItem {
                    Label("홈", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("프로필", systemImage: "person.circle")
                }
            UserTableView()
                .tabItem {
                    Label("동반자 목록", systemImage: "person.2.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
