//
//  ViewController.swift
//  Hello World
//
//  Created by laputer on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHelloWorld: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View did load function for the view controller is called")
    }

    @IBAction func clickMeFunction(_ sender: UIButton) {
        print("Button clicked")
        lblHelloWorld.text = "clicked"
    }
    
}

