//
//  ContentView.swift
//  ShopListApp
//
//  Created by 釣悠馬 on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.quaternaryLabel
    }
    
    
    var body: some View {
        
        TabView(selection: $selection) {
            PageOneView()
                .tabItem() {
                    Label("リスト", systemImage: "list.bullet.clipboard")
                }.tag(1)
            PageTwoView()
                .tabItem() {
                    Label("買い物診断", systemImage: "rotate.3d")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
