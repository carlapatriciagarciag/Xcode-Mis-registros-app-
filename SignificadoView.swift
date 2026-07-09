//
//  SignificadoView.swift
//  misRegistros
//
//  Created by Carla Garcia on 28/06/2026.
//

import SwiftUI

struct SignificadoView: View {
    @Environment(\.dismiss) private var dismiss
    @State var significado = ""
    // Esta View necesita recibir el gesto para poder usarlo
    // junto con el significado que escribirá el usuario.
    let gesto: String
    @Binding var registros: [Registro]
    @State private var showAlert = false
    
    var body: some View {
        Text("Agregar significado")
       // Text(gesto)
        TextField("Significado", text: $significado)
            .textFieldStyle(.roundedBorder)
        // guardado
        Button("Guardar"){
            let nuevoRegistro = Registro(gesto: gesto, significado: significado)
            
            registros.append(nuevoRegistro)
            print(registros.count)
            showAlert = true
            //dismiss()
        }
        //alerta
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("Registro guardado"),
                message: Text("Tu registro ha sido guardado con exito")
            )
        }
    }
    
}
#Preview {
    //.constant([]) es una lista falsa
    SignificadoView(gesto: "ejemplo", registros: .constant([]))
}
