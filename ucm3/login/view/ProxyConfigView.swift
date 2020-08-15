//
//  ProxyConfigView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct ProxyConfigView: View {
    @State private var onHTTP = false
    @State private var onSock4 = false
    @State private var onSock5 = false
    
//    @Binding var onHTTP: Bool
//    @Binding var onSock4: Bool
//    @Binding var onSock5: Bool
    
    
    
    var body: some View {
        List {
            radioItems(title: "HTTP", isOn: onHTTP)
            .contentShape(Rectangle())
            .onTapGesture {
                self.onHTTP = !self.onHTTP
                self.onSock4 = false
                self.onSock5 = false
            }
            
            radioItems(title: "Sock4", isOn: onSock4)
            .contentShape(Rectangle())
            .onTapGesture {
                self.onHTTP = false
                self.onSock4 = !self.onSock4
                self.onSock5 = false
            }
            
            radioItems(title: "Sock5", isOn: onSock5)
            .contentShape(Rectangle())
            .onTapGesture {
                self.onHTTP = false
                self.onSock4 = false
                self.onSock5 = !self.onSock5
            }
        }
        .navigationBarTitle("Proxy config")
    }
}

extension ProxyConfigView {
    func radioItems(title: String, isOn: Bool) -> some View {
        return HStack {
            Text(title)
            Spacer()
            
            if isOn {
                Image(systemName: "circle.fill")
            } else {
                Image(systemName: "circle")
            }
        }
    }
}

struct ProxyConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ProxyConfigView()
    }
}
