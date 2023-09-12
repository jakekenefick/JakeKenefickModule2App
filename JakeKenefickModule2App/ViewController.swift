//
//  ViewController.swift
//  JakeKenefickModule2App
//
//  Created by JAKE KENEFICK on 9/12/23.
//

import UIKit

class ViewController: UIViewController {
    var shoppingItems: [String] = ["Bacon", "milk", "eggs","steak","chicken"]
    var shoppingPrices: [Double] = [5.31,2.34,4.56,12.45,5.65]
    var myDictionary2:[String:Double] = [:]
    
    
    @IBOutlet weak var totalOutlet: UILabel!
    @IBOutlet weak var foodView: UITextView!
    
    @IBOutlet weak var validOutlet: UILabel!
    
    @IBOutlet weak var itemPriceOutlet: UITextView!
    
    @IBOutlet weak var foodOutlet: UITextField!
    
    @IBOutlet weak var pricetextOutlet: UITextField!
    
    @IBOutlet weak var cartOutlet: UITextView!
    
    var total =  0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in shoppingItems {
            print(i)
        }
        for x in shoppingPrices{
            print(x)
        }
        var a = ""
        for f in shoppingItems{
            a += "\n Items: \(f)"
            
        }
        foodView.text = a
        
        var x = ""
        for d in shoppingPrices{
            x += "\n $\(d)"
           
        }
        itemPriceOutlet.text = x

    }

    
    @IBAction func CartAction(_ sender: UIButton) {
   
        foodOutlet.resignFirstResponder()
        let item = foodOutlet.text!
        var a = 0
        if shoppingItems.contains(item)
        {
            let indexOfA = shoppingItems.firstIndex(of: item)!

            let price = shoppingPrices[indexOfA]
            
            myDictionary2[item] = price
            
            validOutlet.text = "Valid product"
            
           
        }
        else
        {
            print("no")
            validOutlet.text = "Not a valid product"
        }
        
        
            var e = ""
        for (key,value) in myDictionary2{
            e += " Items: \(key), Price: \(value) \n"
            
        }
        cartOutlet.text = e
       
    }
    
        
        
        
    
    
}

