//
//  Superkahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Emre Konukpay on 22.08.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superkahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekisim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
    
}

let batman = Superkahraman(isim: "Batman",gercekisim: "Bruce", gorselIsmi: "batman", sehir: "Gotham", meslek: "iş Adamı", koordinat: Koordinat(latitude: 41.8485679, longitude: -87.7319639))

let ironman = Superkahraman(isim: "İron Man", gercekisim: "Tony", gorselIsmi: "ironman", sehir: "New York", meslek: "iş Adamı", koordinat: Koordinat(latitude: 41.7085679, longitude: -87.7319639))

let spiderman = Superkahraman(isim: "Spiderman", gercekisim: "Toby", gorselIsmi: "spiderman", sehir: "Los", meslek: "işsiz", koordinat: Koordinat(latitude: 41.6085679, longitude: -87.7319639))

let superman = Superkahraman(isim: "SuperMan", gercekisim: "Clark", gorselIsmi: "superman", sehir: "Şikago", meslek: "Gazeteci", koordinat: Koordinat(latitude: 41.5085679, longitude: -87.7319639))

var superKahramanDizisi = [batman,ironman,spiderman,superman]
