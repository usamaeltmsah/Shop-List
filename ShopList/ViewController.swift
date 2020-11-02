//
//  ViewController.swift
//  ShopList
//
//  Created by Usama Eltmsah on 11/2/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let itemsNames = ["Apple", "Banana", "Orange"]
    let itemsCounts = [3, 5, 9]
    let itemsImages = ["apple", "banana", "orange"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "custom")! as! CustomTableViewCell
        let curInd = indexPath.row
        cell.itemName.text = itemsNames[curInd]
        cell.itemCount.text = "Count: \(itemsCounts[curInd])"
        cell.itemImage.image = UIImage(named: itemsImages[curInd])
        
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "custom")
    }


}

