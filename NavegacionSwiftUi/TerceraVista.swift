//
//  TerceraVista.swift
//  NavegacionSwiftUi
//
//  Created by Daniel Moya on 8/11/23.
//

import SwiftUI

struct TerceraVista: View {
    var textTerceraVista: String
    var body: some View {
        Text(textTerceraVista).font(.headline).bold().navigationTitle("Tercera vista")
    }
}

