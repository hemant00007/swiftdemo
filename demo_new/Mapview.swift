//
//  Mapview.swift
//  demo_new
//
//  Created by hemant kumar on 02/02/22.
//

import SwiftUI
import MapKit

struct Mapview: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some MKMapView {
       MKMapView()
    }
    func updateUIView(_ uiView: Mapview.UIViewType, context: UIViewRepresentableContext<Mapview>) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        Mapview()
    }
}
