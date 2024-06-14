//
//  CustomVerseView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct CustomVerseView: View {
    let title: String
    let verse_1: String
    let verse_2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundStyle(Color(.hanmumMainText))
                .padding(.bottom, 5)
            Text(verse_1)
            if verse_2 != "" {
                Text(verse_2)
            }
        }
        .padding()
        .overlay(
            Rectangle()
                .fill(Color(.hanmaumMain))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 2)
                .opacity(0.5)
                .offset(y: 10)
            , alignment: .bottom
        )
        .padding(.bottom, 10)
    }
}

#Preview {
    CustomVerseView(title: "1번째 만남 : 예수는 어떤 분 입니까?", verse_1: "*태초에 말씀이 계시니라 이 말씀이 하나님과 함께 계셨으니 이 말씀은 곧 하나님이시니라 (요한복음 1:1)", verse_2: "*시몬 베드로가 대답하여 이르되 주는 그리스도시요 살아 계신 하나님의 아들이시니이다 (마태복음 16:16)")
}
