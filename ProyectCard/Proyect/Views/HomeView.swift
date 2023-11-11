//
//  HomeView.swift
//  Proyect
//
//  Created by CEDAM 14 on 10/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("", systemImage: "cart")
            }
            UserView().tabItem {
                Label("", systemImage: "person")
            }
        }
    }
}

#Preview {
    HomeView()
}
