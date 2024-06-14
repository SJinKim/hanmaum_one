//
//  HomeView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("키 그림", destination: KeyView())
                    .padding(.bottom, 50)
                NavigationLink("암송 말씀", destination: VerseView())
            }
        }
    }
    
    
}

#Preview {
    HomeView()
}
