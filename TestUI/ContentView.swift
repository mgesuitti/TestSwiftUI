//
//  ContentView.swift
//  TestUI
//
//  Created by Mauro Gesuitti on 25/10/2019.
//  Copyright © 2019 Mauro Gesuitti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
        @State private var name: String = ""
        
        var body: some View {
            NavigationView {
                VStack() {
                    Text("Primera App en SwiftUI").font(.headline).fontWeight(.ultraLight)
                    TextField("Ingresa tu nombre", text: $name).multilineTextAlignment(.center)
                    Spacer()
                    Divider()
                    Text(name.count == 0 ? "Hola" : "¡Hola  \(name) !").font(.title).fontWeight(.bold)
                    Divider()
                    Spacer()
                    NavigationLink(destination: DetailView()) {
                        Text("Ir a la segunda pantalla")
                    }.padding(.all)
                }.padding(.all, 40)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
