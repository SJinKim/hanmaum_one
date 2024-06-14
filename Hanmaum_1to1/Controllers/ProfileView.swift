//
//  ProfileView.swift
//  Hanmaum_1to1
//
//  Created by SeungJin Kim on 05.06.24.
//

import SwiftUI

struct ProfileView: View {
    @State private var password: String = "something"
    
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
                profile()
            }
        }
    }
}

@ViewBuilder
func profile() -> some View {
    //Info
    VStack(alignment: .leading) {
        HStack {
            Text("Name: ")
                .bold()
            Text("User Name")
        }
        .padding()
        HStack {
            Text("Email: ")
                .bold()
            Text("User Email")
        }
        .padding()
        HStack {
            Text("Password: ")
                .bold()
            Text("password")
            //SecureField("User password", text: $password)
            //    .textContentType(.password)
        }
        .padding()
        HStack {
            Text("Birthday: ")
                .bold()
            Text("1990-01-01")
            //SecureField("User password", text: $password)
            //    .textContentType(.password)
        }
        .padding()
        HStack {
            Text("Phone: ")
                .bold()
            Text("00000000000")
            //SecureField("User password", text: $password)
            //    .textContentType(.password)
        }
        .padding()
        HStack {
            Text("소속: ")
                .bold()
            Text("청년")
            //SecureField("User password", text: $password)
            //    .textContentType(.password)
        }
        .padding()
        HStack {
            Text("순: ")
                .bold()
            Text("자비")
            //SecureField("User password", text: $password)
            //    .textContentType(.password)
        }
        .padding()
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

#Preview {
    ProfileView()
}
