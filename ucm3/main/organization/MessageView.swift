//
//  MessageView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        List {
            Text("3")
            Text("3")
            Text("3")
            Text("3")
            Text("3")
        }
        .tabItem {
           Image(systemName: "envelope.fill")
            .imageScale(.large)
            
        }
        
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
