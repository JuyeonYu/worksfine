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
        NavigationView {
            List {
                chatRow
                chatRow
                chatRow
                chatRow
                chatRow
                chatRow
            }
            .navigationBarTitle("Chat")
            .navigationBarItems(trailing: HStack(spacing: 20) {
                Button(action: {
                    
                }) {
                    Image(systemName: "message")
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

extension ChatView {
    var chatRow: some View {
        HStack {
            Image(systemName: "person.fill")
                .frame(width: 50, height: 50)
                .imageScale(.large)
            
            VStack(alignment:.leading) {
                HStack {
                    Text("Johhny")
                    .fontWeight(.bold)
                    .fontWeight(.bold)
                    
                    Text("2")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                Text("where are you?")
                    .font(.footnote)
            }
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("오후 8:23")
                    .font(.footnote)
                Text("1")
                    .font(.footnote)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
