//
//  mapPage.swift
//  ctab
//
//  Created by Amal Saad on 02/04/1445 AH.
//

import MapKit
import SwiftUI
//import CoreLocation
struct mapPage: View {
   // CLLocationManager
    
    let locationManager = CLLocationManager()
    @State var region = MKCoordinateRegion(
        center: .init(latitude: 24.713551,longitude: 46.675296),
        span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                locationManager.requestWhenInUseAuthorization()
            }
    }
}

#Preview {
    mapPage()
}
