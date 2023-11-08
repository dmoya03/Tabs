//
//  ContentView.swift
//  NavegacionSwiftUi
//
//  Created by Daniel Moya on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var texto = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Texto", text: $texto)
                NavigationLink(destination: SegundaVista(textSegundaVista: texto)){
                    Text("Abrir segunda vista")
                }
                Button("Abrir modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show){
                    VentanaModal(textModal: texto)
                    //ios 15
                }.navigationTitle("Menu")
                    .toolbar{
                        HStack {
                            NavigationLink(destination: SegundaVista(textSegundaVista: texto)){
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: TerceraVista(textTerceraVista: texto)){
                                Image(systemName: "camera")
                            }
                        }
                    }
            }
            //ios 14:
            /*.navigationBarTitle("Menu")
                .navigationBarItems(trailing:
                                        HStack {
                    NavigationLink(destination: SegundaVista(textSegundaVista: texto)){
                        Image(systemName: "plus")
                    }
                    NavigationLink(destination: TerceraVista(textTerceraVista: texto)){
                        Image(systemName: "camera")
                    }
                })*/
            .padding(.all)
        }
    }
}

#Preview {
    ContentView()
}
