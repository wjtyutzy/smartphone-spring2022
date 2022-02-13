//
//  ViewController.swift
//  FoodImages
//
//  Created by laputer on 2/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = ["burger", "cake", "checken", "fries", "icecream", "pizza", "salad", "salad2", "steak", "sushi"]
    let foodNames = ["burger","cake", "checken", "fries", "icecream", "pizza", "salad", "salad2", "steak", "sushi" ]
    
    @IBOutlet weak var tblView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.delegate = self
        tblView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        
        cell.lblCell.text = foodNames[indexPath.row]
        
        return cell
    }
}

