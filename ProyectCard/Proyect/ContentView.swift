//
//  ContentView.swift
//  Proyect
//
//  Created by CEDAM 13 on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                InfoView()
            } label: {
                Card()
            }
        }
    }
}

#Preview {
    ContentView()
}
