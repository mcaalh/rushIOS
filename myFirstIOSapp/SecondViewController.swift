//
//  SecondViewController.swift
//  myFirstIOSapp
//
//  Created by swift on 19/12/14.
//  Copyright (c) 2014 swift. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet var mapview: MKMapView!
    
    
    @IBOutlet weak var buttonMap: UISegmentedControl!
    
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager = CLLocationManager()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        mapview.showsUserLocation = true
        mapview.delegate = self
        
        ///////////////////////
        let theSpan:MKCoordinateSpan = MKCoordinateSpanMake(0.001 , 0.01)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 48.896814, longitude: 2.318440)
        let theRegion:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
        
        mapview.setRegion(theRegion, animated: true)
        
        var anotation = MKPointAnnotation()
        anotation.coordinate = location
        anotation.title = "Ecole 42"
        anotation.subtitle = "vous etes à 42"
        mapview.addAnnotation(anotation)
        
        let longPress = UILongPressGestureRecognizer(target: self, action: "action:")
        longPress.minimumPressDuration = 1.0
        mapview.addGestureRecognizer(longPress)
        
        let theSpan2:MKCoordinateSpan = MKCoordinateSpanMake(0.0001 , 0.01)
        let location2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 48.897583, longitude: 2.319899)
        let theRegion2:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
        
        mapview.setRegion(theRegion, animated: true)
        
        var anotation2 = MKPointAnnotation()
        anotation2.coordinate = location2
        anotation2.title = "test"
        anotation2.subtitle = "test"
        mapview.addAnnotation(anotation2)

        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
//        let regionToZoom = MKCoordinateRegionMake(manager.location.coordinate, MKCoordinateSpanMake(0.5, 0))
//        mapview.setRegion(regionToZoom, animated: true)
    //}
    
    @IBAction func buttonPressed(sender: UISegmentedControl) {
        if buttonMap.selectedSegmentIndex == 0
        {
        mapview.mapType = MKMapType.Standard
        println("standard")
        }
        if buttonMap.selectedSegmentIndex == 1
        {
            mapview.mapType = MKMapType.Satellite
            println("satellite")
        }
        if buttonMap.selectedSegmentIndex == 2
        {
            mapview.mapType = MKMapType.Hybrid
            println("Hybride")
        }


    
    }
}

