//
//  ContentView.swift
//  ExamenZaafir
//
//  Created by Zaafir on 26/4/24.
//

import SwiftUI


struct Animal: Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
}
struct ContentView: View{

var animals: [Animal] = [
    Animal(name: "Perro", imageName: "doberman"),
    Animal(name: "Caballo", imageName: "caballo"),
    Animal(name: "Tigre", imageName: "tigre")]

    
    var body: some View {
        NavigationView {
            List {
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetalleView(animal: animal .imageName, text: animal.name)) {
                        MostrarEnListView(imagen: animal.imageName, texto: animal.name)
                    }
                }

            }
            .navigationBarTitle("Mis 3 animales favoritos")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
