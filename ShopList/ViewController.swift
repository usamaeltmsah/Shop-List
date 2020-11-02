//
//  ViewController.swift
//  ShopList
//
//  Created by Usama Eltmsah on 11/2/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "custom")! as! CustomTableViewCell
        
        cell.itemName.text = "Banana"
        cell.itemCount.text = "Count: 7"
        cell.itemImage.image = UIImage(named: "banana")
        
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "custom")
    }


}

