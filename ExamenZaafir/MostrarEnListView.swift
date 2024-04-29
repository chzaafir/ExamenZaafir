//
//  MostrarEnListView.swift
//  ExamenZaafir
//
//  Created by Zaafir on 26/4/24.
//

import SwiftUI

struct MostrarEnListView: View {
    
    var imagen: String = ""
    var texto: String = ""

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text(texto)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(8)
                    .padding(8)
                    .multilineTextAlignment(.center)
                Image(imagen)
                    .resizable()
                    .cornerRadius(28)
                    .aspectRatio(contentMode: .fit).frame(width: 200, height: 150)
            }
            Spacer()
            .navigationBarTitle("Mis 3 animales favoritos", displayMode: .inline)
        }.background(.brown.opacity(0.5)).cornerRadius(28)
        
    }
}

struct MostrarEnListView_Previews: PreviewProvider {
    static var previews: some View {
        MostrarEnListView()
    }
}
