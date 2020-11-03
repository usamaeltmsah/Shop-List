//
//  itemViewController.swift
//  ShopList
//
//  Created by Usama Eltmsah on 11/2/20.
//

import UIKit

class itemViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    var name = ""
    var count = 0
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemName.text = name
        self.itemCount.text = "Count: \(count)"
        self.itemImage.image = UIImage(named: image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
