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
        NavigationView {
            List {
                Text("3")
                Text("3")
                Text("3")
                Text("3")
                Text("3")
            }
            .navigationBarTitle("Message")
            .navigationBarItems(trailing: HStack(spacing: 20) {
                Button(action: {
                    
                }) {
                    Image(systemName: "envelope")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "square.grid.2x2")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
            })
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
