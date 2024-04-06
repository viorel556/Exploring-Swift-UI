//
//  MapView.swift
//  Learning Swift UI
//
//  Created by Viorel Harabaru  on 06.04.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    // DATA: region address
    private var region: MKCoordinateRegion {
        MKCoordinateRegion (
            center: CLLocationCoordinate2D(latitude: 46.82442, longitude: 28.19023),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

#Preview {
    MapView()
}
