//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Emre Konukpay on 24.08.2023.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : Superkahraman
    var body: some View {
        
        HStack{
            Image(superkahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superkahraman.isim).font(.title).bold()
                Text(superkahraman.gercekisim).font(.title)
            }
            Spacer()
        }
        
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superkahraman: ironman)
    }
}
