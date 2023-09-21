//
//  mainTabView.swift
//  instagram-clone
//
//  Created by DA MAC M1 160 on 2023/07/10.
//

import SwiftUI

struct mainTabView: View {
    var body: some View {
        TabView{
           feedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            searchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            profileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct mainTabView_Previews: PreviewProvider {
    static var previews: some View {
        mainTabView()
    }
}
