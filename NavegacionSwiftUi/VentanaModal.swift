//
//  VentanaModal.swift
//  NavegacionSwiftUi
//
//  Created by Daniel Moya on 3/11/23.
//

import SwiftUI

struct VentanaModal: View {
    @Environment(\.presentationMode) var back
    var textModal: String
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                Text(textModal)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}

