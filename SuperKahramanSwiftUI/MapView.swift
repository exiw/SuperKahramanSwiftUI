//
//  MapView.swift
//  SuperKahramanSwiftUI
//
//  Created by Emre Konukpay on 22.08.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    
    
   
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superKahramanDizisi[0].koordinatLokasyonu)
    }
}
