//
//  ViewController.swift
//  Gaz S
//
//  Created by Denis Shustin on 15.07.2020.
//  Copyright © 2020 Denis Shustin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //var locs: [CLLocationCoordinate2D]
        var locs = Array(arrayLiteral: CLLocationCoordinate2D())
        locs.removeAll()
        locs.append(CLLocationCoordinate2DMake(55.575, 37.26))
        locs.append(CLLocationCoordinate2DMake(55.575, 38.26))
        // test 5
        // test 6
        for la in 0...70 {
            for lo in -180...0{
                locs.append(CLLocationCoordinate2DMake(Double(la) + 0.575, Double(lo) - 0.26))
            }
            for lo in 0...180{
                locs.append(CLLocationCoordinate2DMake(Double(la) + 0.575, Double(lo) + 0.26))
            }
        }
       
        var annotations = Array(arrayLiteral: MKPointAnnotation())
        //var annotations = []
        for i in 0...locs.count-2 {
            annotations.append(MKPointAnnotation())
            annotations[i].coordinate = locs[i]
            annotations[i].title = String(i)

        }

//        annotations[0].coordinate = locs[0]
//        annotations[0].title = "1"
//        locs.count
//        annotations[1].coordinate = locs[1]
//        annotations[1].title = "2"
        print("locs: \(locs.count)   anns: \(annotations.count)")
        Map.addAnnotations(annotations)
    }
}

