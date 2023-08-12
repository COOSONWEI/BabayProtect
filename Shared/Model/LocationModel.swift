//
//  LocationModel.swift
//  BabayProtectProgram
//
//  Created by 韦小新 on 2023/8/12.
//

import Foundation
import MapKit

final class LocationModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.1, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    func checkIfLocationServiesIsEnabled(){
        locationManager = CLLocationManager()
        locationManager!.delegate = self
        locationManager!.requestAlwaysAuthorization()
    }
    
    func checkLocationAuthorization() {
        guard let locationManager = locationManager else {return}
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .restricted:
            print("You location is restricted likely due to parental controls")
        case .denied:
            print("you have denied thi s app location permission, go into setting to change it")
        case .authorizedAlways, .authorizedWhenInUse:
            mapRegion = MKCoordinateRegion(center: locationManager.location!.coordinate,span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            print("check the location: \(mapRegion)")
        @unknown default:
            break
        }
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
       checkLocationAuthorization()
    }
    
    
}
