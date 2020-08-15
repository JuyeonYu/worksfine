//
//  LoginPreferenceIView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct LoginPreferenceView: View {
    @State private var useSaveID = false
    @State private var useAutoLogiin = false
    @State private var serverURL = ""
    @State private var serverPort = ""
    @State private var useProxy = false
    @State private var proxyServerURL = ""
    @State private var proxyServerPort = ""
    
    @Binding var proxyKind: String
    @State private var isOnHTTPProxy = false
    @State private var isOnSock4Proxy = false
    @State private var isOnSock5Proxy = false
    
    @State private var proxySort: String = ""
    
    var body: some View {
        List {
            basicSection
            serverSection
            proxySection
        }
        
        .navigationBarTitle("Preference")
    }
}

extension LoginPreferenceView {
    var basicSection: some View {
        Section(header: Text("Basic")) {
            Toggle(isOn: $useSaveID) {
                Text("Save ID & password")
            }
            
            Toggle(isOn: $useAutoLogiin) {
                Text("Auto Login")
            }
            
            Text("Version 7.0.0")
        }
    }
    
    var serverSection: some View {
        Section(header: Text("Server")) {
            HStack {
                Text("Server URL")
                TextField("Please enter server URL", text: $serverURL)
            }
            
            HStack {
                Text("Server Port")
                TextField("Please enter server Port", text: $serverPort)
            }
        }
    }
    
    var proxySection: some View {
        Section(header: Text("Proxy")) {
            Toggle(isOn: $useProxy) {
                Text("Save ID & password")
            }
            
            NavigationLink(destination: ProxyConfigView()) {
                HStack {
                    Text("Proxy kind")
                    Spacer()
                    Text("")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            HStack {
                Text("Proxy Server URL")
                TextField("Please enter server URL", text: $proxyServerURL)
            }
            HStack {
                Text("Proxy Server Port")
                TextField("Please enter server URL", text: $proxyServerURL)
            }
        }
    }
}



struct LoginPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPreferenceView(proxyKind: .constant(""))
    }
}
