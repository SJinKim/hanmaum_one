//
//  ProfileView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct ProfileView: View {
    @State var password: String = "something"
    @State var statusSB = "필수선택"
    @State var statusSS = "소속 없음"
    @State var statusS = "믿음"
    
    let 성별 = ["필수선택", "남", "여"]
    let 소속 = ["소속 없음", "장년", "청년"]
    let 순 = ["믿음", "소망", "사랑", "자비", "양선", "화평", "온유", "희락", "새가족"]
    
    var body: some View {
        NavigationView {
            VStack {
                    //Title
                    Text("나의 정보")
                        .font(.system(size: 50))
                        .bold()
                        .background(
                            Color(.hanmaumMain)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 4)
                                .offset(y: 40)
                        )
                        .padding(.bottom, 30)
                //Info
                VStack(alignment: .leading) {
                    HStack {
                        Text("이름: ")
                            .bold()
                        Text("유저1")
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("이메일: ")
                            .bold()
                        Text("uandi@hanmaum.de")
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("비밀번호: ")
                            .bold()
                        Text("password")

                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("생년월일: ")
                            .bold()
                        Text("1990-01-01")

                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("휴대폰: ")
                            .bold()
                        Text("00000000000")

                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("성별: ")
                            .bold()
                        Picker("성별", selection: $statusSB) {
                            ForEach(성별, id: \.self){
                                Text($0)
                            }
                        }
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("소속: ")
                            .bold()
                        Picker("소속", selection: $statusSS) {
                            ForEach(소속, id: \.self){
                                Text($0)
                            }
                        }
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("순: ")
                            .bold()
                        Picker("순", selection: $statusS) {
                            ForEach(순, id: \.self){
                                Text($0)
                            }
                        }
                    }
                    .padding(.bottom, 5)
                }
                .padding()
                
                Button("정보 수정") {
                    // change in db
                    print("adjust personal information")
                }
                .padding()
                .background(Color(red: 0, green: 0, blue: 0.5))
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
        }
    }
}
 
#Preview {
    ProfileView()
}
