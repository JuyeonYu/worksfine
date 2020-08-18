//
//  OrganizationView.swift
//  ucm3
//
//  Created by 주연  유 on 2020/08/15.
//  Copyright © 2020 주연  유. All rights reserved.
//

import SwiftUI

struct OrganizationView: View {
    
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    
    private var viewController: UIViewController? {
        self.viewControllerHolder
    }

    var body: some View {
        NavigationView {
            List {
                myProfile
                birthdayUser
                favorite
                company
            }
            .contentShape(Rectangle())
            .onTapGesture {
                self.viewController?.present(style: .formSheet, transitionStyle: .coverVertical) {
                    ProfileView()
                }    
            }
            
            .navigationBarTitle("Organization")
            .navigationBarItems(trailing: HStack(spacing: 20) {
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

extension OrganizationView {
    var myProfile: some View {
        Section() {
            myProfileRow
        }
    }
    
    var birthdayUser: some View {
        Section(header: Text("happy birthday")) {
            userProfileRow
        }
    }
    
    var favorite: some View {
        Section(header: HStack {
            Text("favorite")
            Spacer()
            Text("^")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print(0)
            }
        ) {
            userProfileRow
            userProfileRow
            userProfileRow
        }
    }
    
    var company: some View {
        Section(header: Text("company")) {
            userProfileRow
            userProfileRow
            userProfileRow
            userProfileRow
            userProfileRow
            userProfileRow
        }
    }
    
    var userProfileRow: some View {
        HStack {
            Image(systemName: "person.fill")
                .frame(width: 50, height: 50)
                .imageScale(.large)
            
            VStack(alignment:.leading) {
                Text("Johhny")
                    .fontWeight(.medium)
                Text("where are you?")
                    .font(.footnote)
            }
        }
    }
    
    var myProfileRow: some View {
        HStack {
            Image(systemName: "person.fill")
                .frame(width: 70, height: 70)
                .imageScale(.large)
            
            VStack(alignment:.leading) {
                Text("Johhny")
                    .fontWeight(.bold)
                    .fontWeight(.bold)
                Text("where are you?")
                    .font(.footnote)
            }
        }
    }
}


struct OrganizationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationView()
    }
}
