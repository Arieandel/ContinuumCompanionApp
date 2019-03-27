//
//  PageListScreen.swift
//  TableView
//
//  Created by Ariel Andelt on 2019-03-27.
//  Copyright © 2019 Ariel Andelt. All rights reserved.
//

import UIKit

class PageListScreen: UIViewController {
    
    @IBOutlet weak var temp: UITableView!
    
    var pages: [Page] = [] //an array of Page type objects
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pages = createArray()
        
        temp.delegate = self
        temp.dataSource = self
    }
    
    func createArray() -> [Page] {
        var tempPages: [Page] = []
        
        let page1 = Page(image: #imageLiteral(resourceName: "A.png") ,title: "Test Element: A")
        let page2 = Page(image: #imageLiteral(resourceName: "B.png"), title: "Test Element: B")
        let page3 = Page(image: #imageLiteral(resourceName: "C.png"), title: "Test Element: C")
        let page4 = Page(image: #imageLiteral(resourceName: "D.png"), title: "Test Element: D")
        let page5 = Page(image: #imageLiteral(resourceName: "E.png"), title: "Test Element: E")
        let page6 = Page(image: #imageLiteral(resourceName: "F.png"), title: "Test Element: F")
        
        tempPages.append(page1)
        tempPages.append(page2)
        tempPages.append(page3)
        tempPages.append(page4)
        tempPages.append(page5)
        tempPages.append(page6)

        return tempPages
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
