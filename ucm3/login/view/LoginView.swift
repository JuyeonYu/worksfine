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
        
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    private var viewController: UIViewController? {
        self.viewControllerHolder
    }

    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "play.fill")
                    .resizable()
                    .padding()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 100)
                
                TextField("ID", text: $userID)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    
                SecureField("password", text: $userPassword)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    
                    self.viewController?.present(style: .fullScreen, transitionStyle: .coverVertical) {
                       MainView()
                    }
                }) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 220, height: 60)
                        .background(Color.black)
                        .cornerRadius(50)
                }
                
                NavigationLink(destination: LoginPreferenceView(proxyKind: .constant(""))) {
                    Text("preference")
                        .padding()
                }
                Spacer()
            }
            .padding()
        }
        .navigationBarHidden(true)
    
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userID: "", userPassword: "", presentingModal: false)
    }
}
