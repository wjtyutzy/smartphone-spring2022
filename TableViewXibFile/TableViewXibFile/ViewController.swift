//
//  ViewController.swift
//  TableViewXibFile
//
//  Created by laputer on 2/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let imgages = ["Seattle1", "Seattle2", "Seattle3","Seattle4"]
    let imgageLabel = ["Seattle1", "Seattle2", "Seattle3","Seattle4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named: imgages[indexPath.row])
        cell.lblImage.text = imgageLabel[indexPath.row]
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel?.text = imgages[indexPath.row]
        return cell
    }
    
    
    
}

