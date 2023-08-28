//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Emre Konukpay on 22.08.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi){ superKahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superKahraman),
                label: {
                    ListeRowView(superkahraman: superKahraman)
                })
            }.navigationTitle(Text("Superkahraman Kitabı"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
 
