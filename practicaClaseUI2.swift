//
//  practicaClaseUI2.swift
//  ProyectOne
//
//  Created by DiegoMoctezuma on 04/10/23.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        VStack{
            Image(systemName: "playstation.logo")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
                .background(.black)
                .clipShape(.capsule)
            Text("Curso SwiftUI")
                .padding()
                .background(.orange)
                .clipShape(.capsule)
                .foregroundColor(.white)
                .font(.title2)
                .bold()
                .padding()
            Button{
                
            }label: {
                Text("Preview")
                    .padding()
                    .background(.cyan)
                    .foregroundColor(.white)
                    .bold()
                    .clipShape(.capsule)
                    .padding()
            }
            
            Button{
                
            }label: {
                Text("Lista")
                    .padding()
                    .background(.pink)
                    .foregroundColor(.white)
                    .bold()
                    .clipShape(.capsule)
            }
            
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
