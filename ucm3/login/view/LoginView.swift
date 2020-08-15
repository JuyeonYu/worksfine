//
//  LoginView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var userID: String = ""
    @State var userPassword: String = ""
    @State var presentingModal: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "play.fill")
                .resizable()
                .padding()
                .scaledToFit()
                .frame(width: 250)
            
            Spacer()
            
            TextField("ID", text: $userID)
                .padding()
                
            SecureField("password", text: $userPassword)
                .padding()
            
            NavigationLink(destination: MainView()) {
                Text("Login")
                    .foregroundColor(Color.blue)
                    .padding()
            }
//            Button("Login") {
//                self.presentingModal = true
//            }.sheet(isPresented: $presentingModal) {
//                MainView()
//            }
            
            
            NavigationLink(destination: LoginPreferenceView(proxyKind: .constant(""))) {
                Text("Preference")
                    .padding()
            }
            
            
            Spacer()
        }
        .navigationBarTitle("Login")
    
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userID: "", userPassword: "", presentingModal: false)
    }
}
