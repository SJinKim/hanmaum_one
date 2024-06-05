//
//  CustomImageView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct CustomImageView: View {
    let imageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .failure:
                Image(systemName: "photo")
                    .font(.largeTitle)
            case .success(let image):
                image
                    .resizable()
            default:
                Image(systemName: "home")
            }
        }
        .frame(width: 256, height: 256)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CustomImageView(imageUrl: "https://hws.dev/paul3.jpg")
}
