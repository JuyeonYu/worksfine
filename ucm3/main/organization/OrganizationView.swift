//
//  OrganizationView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct OrganizationView: View {
    var body: some View {
        List {
            Text("1")
            Text("1")
            Text("1")
            Text("1")
        }
            
            
        .tabItem {
           Image(systemName: "person.fill")
            .imageScale(.large)
        }
        
        
    }
}

struct OrganizationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationView()
    }
}
