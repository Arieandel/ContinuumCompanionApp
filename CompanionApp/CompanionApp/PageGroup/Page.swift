//
//  Page.swift
//  TableView
//
//  Created by Ariel Andelt on 2019-03-27.
//  Copyright © 2019 Ariel Andelt. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class Page{
    
    var image: UIImage?
    var title: String
    
    init(image: UIImage, title: String){
        self.image = image
        self.title = title
    }
    
}
