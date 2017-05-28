//
//  ViewController.swift
//  Onigokko_game
//
//  Created by 山田卓 on 2017/05/28.
//  Copyright © 2017 TakuYamada. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController ,CLLocationManagerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationGet(){
        myLocationManager = CLLocationManager()
        myLocationManager.delegate = self
        
        switch CLLocationManager.authorizationStatus() {
        case .restricted:
            print("no user")
        case .denied:
            print("no user")
        case .notDetermined:
            myLocationManager.requestWhenInUseAuthorization()
        default:
            print("peremited")
        }
        
        if !CLLocationManager.locationServicesEnabled(){
            return
        }
        myLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        myLocationManager.distanceFilter = kCLDistanceFilterNone
        myLocationManager.requestLocation()
    }
    
    
    //ここでlocation更新されたら取得
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = manager.location else { return }
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
    }


}

