//
//  ContentView.swift
//  mis registros
//
//  Created by Carla Garcia on 26/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var registros: [Registro] = []
    var body: some View {
        //pasa de una pantalla a otra, deja presionar el navigationLink
        NavigationStack{
            VStack {
                Text("Comunicacion")
                //permite ir hacia otra pantalla
                //es $registro porque es el permiso de binding y registro es el VALOR
                NavigationLink(destination: RegistroView(registros: $registros)) {
                    Text("Agregar registro")
                    }
                //Por cada elemento que haya en el array registros, llamalo registro y ejecutá este código
                ForEach(registros) { registro in
                    VStack(alignment: .leading) {
                        Text(registro.gesto)
                            .font(.headline)
                        
                        Text(registro.significado)
                            .font(.subheadline)
                    }
                    
                    .padding()
                }
            }
            
        }
    }
}
#Preview {
    ContentView()
}
