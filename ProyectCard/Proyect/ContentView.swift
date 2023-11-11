//
//  ContentView.swift
//  Proyect
//
//  Created by CEDAM 13 on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let ids = [23,42,67,65,334]
    let nombres = ["Pajaro bonito", "Pajaro bello", "Pajaro feo","Pajaro grande","Pajaro chico"]
    let precios = [50,62,10,34,876]
    let preciosC = ["50","62","10","34","876"]
    
    let idsP = [43,2,677,635,34]
    let nombresP = ["Perro bonito", "Perro bello", "Perro feo","Perro grande","Perro chico"]
    let preciosP = [150,162,110,134,1876]
    let preciosCP = ["150","162","110","134","1876"]
    
    let idsG = [4,27,77,675,634]
    let nombresG = ["Gato bonito", "Gato bello", "Gato feo","Gato grande","Gato chico"]
    let preciosG = [1504,787,432,876,3456]
    let preciosCG = ["1504","787","432","876","3456"]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    Text("Pajaros en venta")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(0 ..< 5) { item in
                                NavigationLink {
                                    InfoView(idimage: ids[item],precio: precios[item], nombreProducto:"\(nombres[item])" ,precioProducto: "\(preciosC[item])")
                                } label: {
                                    Card(idimage: ids[item],nombreProducto: "\(nombres[item])",precioProducto: "\(preciosC[item])")
                                }
                            }
                        }
                    }
                    Text("Perros en venta")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(.top,40)
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(0 ..< 5) { item in
                                NavigationLink {
                                    InfoView(idimage: idsP[item],precio: preciosP[item], nombreProducto:"\(nombresP[item])" ,precioProducto: "\(preciosCP[item])")
                                } label: {
                                    Card(idimage: idsP[item],nombreProducto: "\(nombresP[item])",precioProducto: "\(preciosCP[item])")
                                }
                            }
                        }
                    }
                    Text("Gatos en venta")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(.top,40)
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(0 ..< 5) { item in
                                NavigationLink {
                                    InfoView(idimage: idsG[item],precio: preciosG[item], nombreProducto:"\(nombresG[item])" ,precioProducto: "\(preciosCG[item])")
                                } label: {
                                    Card(idimage: idsG[item],nombreProducto: "\(nombresG[item])",precioProducto: "\(preciosCG[item])")
                                }
                            }
                        }
                    }
                }.padding(.leading)
            }
        }
    }
}

#Preview {
    ContentView()
}
