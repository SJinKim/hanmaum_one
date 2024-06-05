//
//  KeyView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct KeyView: View {
    @StateObject var viewModel = KeyViewViewModel()
    var body: some View {
        let imageName = "key"
        Button {
            if viewModel.counter > 13 {
                //reset counter
                viewModel.counter = 0
            }
            viewModel.counter += 1
        } label: {
            Image(imageName + String(viewModel.counter))
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    KeyView()
}
