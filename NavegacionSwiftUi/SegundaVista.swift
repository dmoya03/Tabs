//
//  SegundaVista.swift
//  NavegacionSwiftUi
//
//  Created by Daniel Moya on 8/11/23.
//

import SwiftUI

struct SegundaVista: View {
    var textSegundaVista: String
    @State private var texto2 = ""
    var body: some View {
        Spacer()
        Text(textSegundaVista).font(.headline).bold().navigationTitle("Segunda Vista")
        Spacer()
        TextField("Texto para enviar a 3ra pantalla", text: $texto2)
        NavigationLink(destination: TerceraVista(textTerceraVista: texto2)){
            Text("Abrir tercera vista")
        }
    }
}


