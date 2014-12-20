//
//  SecondViewController.swift
//  myFirstIOSapp
//
//  Created by swift on 19/12/14.
//  Copyright (c) 2014 swift. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapview: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapview.showsUserLocation = true
        mapview.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

