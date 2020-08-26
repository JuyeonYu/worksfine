//
//  MessageView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    @Binding var searchKeyword: String
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                TextField("검색", text: $searchKeyword)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
                
                if isEditing {
                   Button(action: {
                       self.isEditing = false
                       self.searchKeyword = ""

                   }) {
                       Text("Cancel")
                   }
                   .padding(.trailing, 10)
                   .transition(.move(edge: .trailing))
                   .animation(.default)
                }
                    
                List {
                    Group {
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                    }
                    
                    Group {
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                        Text("3")
                    }
                }
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

struct SearchBar: UIViewRepresentable {

    @Binding var text: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(searchKeyword: .constant(""))
    }
}
