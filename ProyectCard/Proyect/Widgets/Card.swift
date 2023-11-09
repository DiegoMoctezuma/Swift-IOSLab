//
//  Card.swift
//  Proyect
//
//  Created by CEDAM 13 on 08/11/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: "https://picsum.photos/id/59/200/150"))
                .padding(.bottom,20)
            Text("Terreno")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.leading,10)
                .foregroundColor(.black)
            Text("$20")
                .padding(.leading,10)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(width: 200, height: 250)
        .background(.ultraThickMaterial)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    Card()
}
