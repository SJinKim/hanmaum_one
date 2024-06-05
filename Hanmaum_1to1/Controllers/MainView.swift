//
//  MainView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HomeView()
    }
    @ViewBuilder
    var accountView: some View {
        //if signed in
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", image: "house")
                }
        }
    }
}

#Preview {
    MainView()
}
