//
//  Total.swift
//  Shopping
//
//  Created by Esteban Ordonez on 2/4/19.
//  Copyright © 2019 Esteban Ordonez. All rights reserved.
//

import Foundation
import UIKit

class TotalViewController : UIViewController{
    
    var totals: Double = 0.0;
    var qty: Int = 0;
    var name: String = "";
    
    var shoppingCart: [String: (numberAlreadyPurchased: Int, price: Double)]? = nil;
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(format: "Your total is $%.2f for %d items\n\n", totals, qty);
        if shoppingCart == nil {
            return;
        }
        
        print(totals)
        for (key, value) in shoppingCart! {
            print(key, value);
            let unitPrice: Double = value.price;
            let totalPrice = unitPrice * Double(value.numberAlreadyPurchased);
            label.text! += "\(key) \(value.numberAlreadyPurchased) \(totalPrice)\n";
        }
        
    }
    
}
