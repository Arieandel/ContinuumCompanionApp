//
//  PageCell.swift
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

class PageCell: UITableViewCell {
    
    
    @IBOutlet weak var pageImageView: UIImageView!    
    @IBOutlet weak var pageTitleLabel: UILabel!
    func setPage(page: Page){
     pageImageView.image = page.image
     pageTitleLabel.text = page.title
    }
    
}
