//
//  ViewController.swift
//  Tracker Hacker
//
//  Created by Henry Bonomolo on 11/19/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var questionmark: UIButton!
    @IBOutlet weak var begin: UIButton!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var pageControl: UIPageControl!
        
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        background.layer.cornerRadius = 25
        questionmark.layer.cornerRadius = 10
        questionmark.tintColor = UIColor.lightGray
        begin.layer.cornerRadius = 10
        begin.tintColor = UIColor.systemGreen
        begin.backgroundColor = UIColor.systemGreen
        begin.isEnabled = false
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        map.showsUserLocation = true
        map.layer.zPosition = -1
    }

    
}
