//
//  StockViewController.swift
//  StockMaster
//
//  Created by laputer on 2/27/22.
//

import UIKit
import RealmSwift

class StockViewController: UIViewController {
    
    var txtField : UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print(Realm.Configuration.defaultConfiguration.fileURL?.path)
        
        loadStockValues()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addDBAction(_ sender: Any) {
        
        let stock = StockShort()
        /*stock.symbol = "TSLA"
        stock.price = 915.23
        stock.volume = 23423434*/
        
        stock.symbol = "APPL"
        stock.price = 120.96
        stock.volume = 332607163
        
        do{
            let realm = try Realm()
            print(realm.configuration.fileURL)
            try realm.write({
                realm.add(stock,update: .modified)
            })
        }catch{
            print("Error in writing to db")
        }
        
    }
    
    func loadStockValues(){
        
        do{
            let realm = try Realm()
            let stocks = realm.objects(StockShort.self)
            
            print(stocks)
            
            for stock in stocks {
                print(stock.symbol)
            }
            
        }catch{
            print("Error in reading from Realm")
        }
        
    }
    
    
    func getTslsStock() -> StockShort{
        
        do{
            let realm = try Realm()
            let stocks = realm.objects(StockShort.self)
            
            //print(stocks)
            
            for stock in stocks {
                //print(stock.symbol)
                
                if stock.symbol == "TSLA" {
                    return stock
                }
            }
            
        }catch{
            print("Error in reading from Realm")
        }
        
        return StockShort()
    }
    
    func deleteStockFromDB( stock : StockShort) {
        do{
            let realm = try Realm()
            try realm.write({
                realm.delete(stock)
            })
        }catch{
            print("Unable to delete from Realm DB")
        }
    }
    
    
    @IBAction func deleteTSLAStock(_ sender: Any) {
        
        let tsla = getTslsStock()
        //tsla.symbol = "TSLA"
        deleteStockFromDB(stock: tsla)
        
    }
    
    func addStockToDB(symbol : String) {
        let stock = StockShort()
        
        stock.symbol = symbol
        
        do{
            let realm = try Realm()
            print(realm.configuration.fileURL)
            try realm.write({
                realm.add(stock,update: .modified)
            })
        }catch{
            print("Error in writing to db")
        }
    }
    
    @IBAction func addStockAction(_ sender: Any) {
        
        
        
        let alertController = UIAlertController(title: "Add Stock", message: "", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            guard let symbol = self.txtField?.text else {
                return
            }
            self.addStockToDB(symbol: symbol)
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        
        alertController.addTextField { stockTextField in
            stockTextField.placeholder = "aaaa"
            self.txtField = stockTextField
        
            
        }
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
