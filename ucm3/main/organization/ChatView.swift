//
//  ChatView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        List {
            Text("2")
            Text("2")
            Text("2")
            Text("2")
            Text("2")
        }
        .tabItem {
           Image(systemName: "message.fill")
            .imageScale(.large)
            
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
