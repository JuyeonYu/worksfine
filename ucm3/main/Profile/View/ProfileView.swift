//
//  Profile.swift
//  ucm3
//
//  Created by Juyeon on 2020/08/19.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            profileImageView
            mainProfile
            buttons
            detailInformation
            Spacer()
            
        }
    }
}

extension ProfileView {
    var profileImageView: some View {
        ZStack {
            Rectangle()
                .frame(height: 200)
                .foregroundColor(.yellow)
            
            Image(systemName: "person.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .cornerRadius(50)
        }
    }
    
    var mainProfile: some View {
        VStack {
            HStack {
                Text("유주연")
                    .fontWeight(.bold)
                Text("사원")
            }
            
            HStack {
                Text("개발팀")
                Text("iOS 개발")
            }
        }
    }
    
    var buttons: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "message")
                .padding(.horizontal, 20)
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "envelope")
                .padding(.horizontal, 20)
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "phone")
                .padding(.horizontal, 20)
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "person.badge.plus")
                .padding(.horizontal, 20)
            }
        }
    }
    var detailInformation: some View {
        VStack(alignment: .leading) {
            Text("전자 메일")
                .padding(.bottom, 10)
            Text("remake111@ucware.net")
                .foregroundColor(Color.blue)
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color.gray)
            Text("회사")
                .padding(.bottom, 10)
            Text("031-525-3651")
                .foregroundColor(Color.blue)
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color.gray)
            Text("전화번호")
                .padding(.bottom, 10)
            Text("010-9451-8676")
                .foregroundColor(Color.blue)
            HStack {
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
