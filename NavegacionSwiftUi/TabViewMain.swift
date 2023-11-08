//
//  TabViewMain.swift
//  NavegacionSwiftUi
//
//  Created by Daniel Moya on 8/11/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            Vista2().tabItem {
                Label("Vista2", systemImage: "plus")
            }
            Vista3().tabItem {
                Label("Vista3", systemImage: "camera")
            }
        }
    }
}

#Preview {
    TabViewMain()
}
