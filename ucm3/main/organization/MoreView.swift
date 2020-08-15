//
//  MoreView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        List {
            Text("4")
            Text("4")
            Text("4")
            Text("4")
            Text("4")
        }
        .tabItem {
           Image(systemName: "ellipsis")
            .imageScale(.large)
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
