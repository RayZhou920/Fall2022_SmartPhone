//
//  ViewController.swift
//  GetCurentLocations
//
//  Created by mac on 9/24/22.
//

// 1. Add the Privacy strings to info.plist
// 2. Set location to wherever you want on the simulator
// 3. import the coreLocation
// 4. Confirm to the CLLocationManagerDelegate
// 5. Add a LocationManager to the code let locationManager = CLLocationManager()


import UIKit
import CoreLocation


class ViewController: UIViewController {

    let locationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        
    }

    func 

}

