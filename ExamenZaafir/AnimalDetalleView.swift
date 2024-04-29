//
//  AnimalDetalleView.swift
//  ExamenZaafir
//
//  Created by Zaafir on 26/4/24.
//

import SwiftUI

struct AnimalDetalleView: View {
    
    var animal: String = ""
    var text: String = ""

    var body: some View {
        VStack {
            Text(text)
                .font(.title.bold())
                .padding()
            Image(animal)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400).cornerRadius(28)
            Spacer()
        }.background(.brown.opacity(0.5)).cornerRadius(28)
        .navigationBarTitle("Uno de mis animales favoritos", displayMode: .inline)
    }
}


struct AnimalDetalleView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetalleView()
    }
}
