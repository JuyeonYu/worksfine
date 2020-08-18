//
//  MainView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            OrganizationView()
            .tabItem {
               Image(systemName: "person.fill")
                .imageScale(.large)
            }
            
            ChatView()
            .tabItem {
               Image(systemName: "message.fill")
                .imageScale(.large)
            }
            
            MessageView()
            .tabItem {
               Image(systemName: "envelope.fill")
                .imageScale(.large)
            }
            
            MoreView()
            .tabItem {
               Image(systemName: "ellipsis")
                .imageScale(.large)
            }
        }
    .navigationBarTitle("")
    .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
