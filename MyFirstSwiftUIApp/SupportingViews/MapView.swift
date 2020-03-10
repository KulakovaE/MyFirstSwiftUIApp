//
//  MapView.swift
//  MyFirstSwiftUIApp
//
//  Created by Elena Kulakova on 2020-03-10.
//  Copyright © 2020 Elena Kulakova. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    //method that creates an MKMapView
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    //method that configures the view and responds to any changes.
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
