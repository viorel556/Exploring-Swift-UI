/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that presents a map.
*/

import SwiftUI
import MapKit

struct MapView: View {
    
    // Abstract: this view will receive coordinate and region data:
    var coordinate: CLLocationCoordinate2D
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    // MARK: View is here
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
   
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
