//
//  ContentView.swift
//  SwiftUI_GuessTheFlag
//
//  Created by Amr Hesham on 30/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertShown = false
    var body: some View {
        Button("Show Alert") {
            isAlertShown = true
        }.alert("Important Message", isPresented: $isAlertShown) {
            Button("Cancel", role: .cancel) {}
            Button("Delete", role: .destructive) {}
        } message: {
            Text("Please choose")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
