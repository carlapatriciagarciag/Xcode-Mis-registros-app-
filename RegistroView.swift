//
//  RegistroView.swift
//  misRegistros
//
//  Created by Carla Garcia on 26/06/2026.
//

import SwiftUI


struct RegistroView: View {
    //no es dueño de el array se lo presta content
    @Binding var registros: [Registro]
    @State private var textRegistros = ""
    var body: some View {
        Text("Registrar gesto")
        //agrega input
        TextField("gesto:", text: $textRegistros)
            //pongo estilo al recuadro de input
            .textFieldStyle(.roundedBorder)
        NavigationLink(destination: SignificadoView (gesto:textRegistros,
            registros: $registros)) {
            Text("Agregar significado")
                

        }
            .padding()
    }
}

#Preview {
    RegistroView(registros: .constant([]))
}
