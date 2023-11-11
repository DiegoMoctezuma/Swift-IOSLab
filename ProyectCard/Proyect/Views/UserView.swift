//
//  UserView.swift
//  Proyect
//
//  Created by CEDAM 14 on 10/11/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: URL(string: "https://picsum.photos/id/99/400/350"))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Diego Moctezuma")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                HStack(spacing: 40){
                    Text("Compras")
                    Divider()
                        .background(.red)
                    Text("Ventas")
                    Divider()
                        .background(.red)
                    Text("Favoritos")
                }.padding(.bottom,30)
                Button{
                    //
                }label: {
                    Text("Configuración")
                        .padding(.horizontal,100)
                        .padding(.vertical,20)
                        .background(.gray)
                        .clipShape(.capsule)
                        .foregroundStyle(.white)
                }
                Button{
                    //
                }label: {
                    Text("Cerrar sesión")
                        .padding(.horizontal,50)
                        .padding(.vertical,15)
                        .clipShape(.capsule)
                        .foregroundStyle(.blue)
                        .italic()
                }
            }
        }
    }
}

#Preview {
    UserView()
}
