//
//  InfoView.swift
//  Proyect
//
//  Created by CEDAM 13 on 08/11/23.
//

import SwiftUI

struct InfoView: View {
    
    @State private var cantidad = 1
    @State private var total = 0
    
    var idimage: Int = 50
    var precio: Int = 62
    var nombreProducto: String
    var precioProducto: String
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: "https://picsum.photos/id/\(idimage)/400/350"))
                    .padding(.bottom,5)
                    .ignoresSafeArea()
                
                Text("\(nombreProducto)")
                    .bold()
                    .font(.largeTitle)
                    .padding(.leading,10)
                
                Text("$\(precioProducto)")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom,20)
                    .padding(.leading,10)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac sodales sapien. Curabitur eu sagittis odio. Donec eros velit, bibendum ut massa at, mollis pretium ex. Nulla ante lectus, euismod quis felis et, iaculis porta purus. Nulla luctus orci ac purus efficitur, sit amet fermentum augue viverra. Curabitur eu lacinia felis. Suspendisse eget erat malesuada, tincidunt ipsum vel, tempor massa. Vivamus aliquet arcu dictum turpis pretium, quis varius elit efficitur. Etiam ante risus, blandit a nisl a, pulvinar viverra eros. Fusce ullamcorper viverra varius. Curabitur non dapibus turpis. Nulla tincidunt, nibh quis gravida malesuada, urna augue vehicula tortor, ac consequat elit orci at eros. Pellentesque aliquet turpis diam, id consequat urna consectetur ac. Pellentesque maximus ultrices leo, id laoreet neque bibendum quis. Vestibulum sed diam dui.")
                    .padding(.leading,20)
                
                HStack{
                    
                    Button{
                        restar()
                    }label: {
                        Image(systemName: "minus").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text("\(cantidad)")
                        .padding()
                        .bold()
                        .font(.title3)
                    
                    Button{
                        sumar()
                    }label: {
                        Image(systemName: "plus").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text("Precio total a pagar: $ \(total)")
                        .font(.title3)
                    
                }.padding(.top,20).padding(.leading,20)
            
                Spacer()
            }
        }.ignoresSafeArea()
            .onAppear()
    }
    
    func restar(){
        if(cantidad == 0){
            cantidad = 0
            totalPrecio()
        }else {
            cantidad -= 1
            totalPrecio()
        }
    }
    
    func sumar(){
        cantidad += 1
        totalPrecio()
    }
    
    func totalPrecio(){
        total = cantidad * precio
    }
}