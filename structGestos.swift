//
//  structGestos.swift
//  misRegistros
//
//  Created by Carla Garcia on 03/07/2026.
//

import Foundation

//creo la variable del struct es como un diccionario
struct Registro: Identifiable{
    //UUID() es un identificador UNICO asi sabe que son distintos
    let id = UUID()
    var gesto: String
    var significado: String
}
