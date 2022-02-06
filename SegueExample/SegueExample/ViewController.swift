//
//  ViewController.swift
//  SegueExample
//
//  Created by laputer on 2/6/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goToSecondVC(_ sender: Any) {
        
        performSegue(withIdentifier: "SegueToSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.lbl
        }
        <#code#>
    }
    
}

