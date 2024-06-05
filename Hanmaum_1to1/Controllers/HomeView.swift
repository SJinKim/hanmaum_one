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
                NavigationLink("Key Pictures", destination: KeyView())
            }
        }
    }
    
    
}

#Preview {
    HomeView()
}
