//
//  StockViewController.swift
//  NailStock
//
//  Created by laputer on 2/20/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockViewController: UIViewController {

    
    @IBOutlet weak var txtStockSymbol: UITextField!
    
   
    @IBOutlet weak var lblStockPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStockPrice(_ sender: Any) {
        
        //let symbol = txtStockSymbol.text!
        
        guard let symbol : String =
        txtStockSymbol.text else {return}
        
        let url = "\(shortQuoteURL)\(symbol.uppercased())?apikey=\(apiKey)"
        
        print(url)
        
        SwiftSpinner.show("Getting Stock Value for \(symbol)")
        
        
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil {
                print(response.error!)
                return
            }
            //if I am here then I have got the data
            
            //print(response.data!)
            
            let stocks = JSON(response.data!).array
            
            guard let stock = stocks!.first else { return}
            
            print(stock)
            
            let quote = QuoteShort()
            quote.symbol = stock["symbol"].stringValue
            quote.price = stock["price"].floatValue
            quote.volume = stock["bolume"].intValue
            
            self.lblStockPrice.text = "\(quote.symbol) : \(quote.price) $"
        }
    }
  

}
