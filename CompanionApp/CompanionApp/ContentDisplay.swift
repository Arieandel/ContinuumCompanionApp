//
//  ContentDisplay.swift
//  TableView
//
//  Created by Ariel Andelt on 2019-03-27.
//  Copyright © 2019 Ariel Andelt. All rights reserved.
//

import UIKit

class ContentDisplay: UIViewController {

    @IBOutlet weak var imageArea: UIImageView!
    var someString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        evaluateInput()
    }
    
    func evaluateInput(){
        switch someString {
        case "Test Element: A":
            imageArea.image = #imageLiteral(resourceName: "A_.png")
            break
        case "Test Element: B":
            imageArea.image = #imageLiteral(resourceName: "B_.png")
            break
        case "Test Element: C":
            imageArea.image = #imageLiteral(resourceName: "C_.png")
            break
        case "Test Element: D":
            imageArea.image = #imageLiteral(resourceName: "D_.png")
            break
        case "Test Element: E":
            imageArea.image = #imageLiteral(resourceName: "E_.png")
            break
        case "Test Element: F":
            imageArea.image = #imageLiteral(resourceName: "A_.png")
            break
        default:
            imageArea.image = #imageLiteral(resourceName: "C_.png")
            break
        }
    }

}
