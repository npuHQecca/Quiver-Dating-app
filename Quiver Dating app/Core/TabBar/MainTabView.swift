//
//  MainTabBar.swift
//  Quiver Dating app
//
//  Created by стасик on 13.05.24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Text("Swipping view")
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            Text("Search view")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Inbox view")
                .tabItem { Image(systemName: "text.bubble") }
                .tag(2)
            
            Text("Profile view")
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
