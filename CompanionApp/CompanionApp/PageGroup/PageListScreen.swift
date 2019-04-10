//
//  PageListScreen.swift
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

class PageListScreen: UIViewController {
    
    @IBOutlet weak var temp: UITableView!
    
    var pages: [Page] = [] //an array of Page type objects
    //var testImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pages = createArray()
        //let tableView = UITableView(frame: self.view, style: .normal)
        
        temp.delegate = self
        temp.dataSource = self
    }
}


extension PageListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return pages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let page = pages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageCell") as! PageCell
        
        cell.setPage(page: page)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "displayContent", sender: pages[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let cD = segue.destination as! ContentDisplay
        cD.someString = (sender as! Page).title
        print(cD.someString)
    }
    
}
