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
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .frame(height: 200)
                    .foregroundColor(.yellow)
                
                Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
            }
            
            Text("Johnny")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            Text("I do what we have to do")
                .font(.headline)
                .padding(.bottom, 10)
            Text("Korean branch")
                .padding(.bottom, 10)
            Text("Development team")
                .padding(.bottom, 10)
            Text("iOS developer")
                .padding(.bottom, 10)
            Text("Team member")
                .padding(.bottom, 10)
            
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "message")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "phone")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "person.badge.plus")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                }
            }
            .foregroundColor(Color.black)
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
