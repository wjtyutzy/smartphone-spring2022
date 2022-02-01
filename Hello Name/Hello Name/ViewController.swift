//
//  ViewController.swift
//  Hello Name
//
//  Created by laputer on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sayHelloFunction(_ sender: Any) {
        
        guard let firstName = txtFirstName.text else {
            lblHello.text = "Enter First Name"
            return
        }
        
        guard let lastName = txtLastName.text else {
            lblHello.text = "Enter Last Name"
            return
        }
        
        lblHello.text = "Hello \(firstName) \(lastName)"
    }
    
    
}

