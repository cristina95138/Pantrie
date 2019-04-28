//
//  FirstViewController.swift
//  Pantrie
//
//  Created by Cristina Lawson on 4/27/19.
//  Copyright © 2019 Cristina Lawson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var expirationLabel: UILabel!
    
//    
//    let itemNums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
//    let foodItems = ["Milk", "Cheese", "Apples", "Oranges", "Tomatoes", "Lettuce", "Eggs", "Bread"]
//
//    let foodImages = ["milk.png", "cheese.png", "apple.png", "orange.png", "tomato.png", "lettuce.png", "egg.png", "baguette.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let a = quantityPicker.selectedRow(inComponent: 0)
    }
    
    @IBAction func randomButton(_ sender: Any) {
        let randomNumber = (arc4random() % 10) + 1
        let randomNum = (arc4random() % 28) + 1
        quantityLabel.text = String(randomNumber)
        expirationLabel.text = String(randomNum)
    }
    
    
}

