//
//  AddFoodController.swift
//  Pantrie
//
//  Created by Cristina Lawson on 4/27/19.
//  Copyright © 2019 Cristina Lawson. All rights reserved.
//

import UIKit

class AddFoodController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var foodPicker: UIPickerView!
    
    let foodItems = ["Milk", "Cheese", "Apples", "Oranges", "Tomatoes", "Lettuce", "Eggs", "Bread"]
    
    let foodImages = ["milk.png", "cheese.png", "apple.png", "orange.png", "tomato.png", "lettuce.png", "egg.png", "baguette.png"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foodItems[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foodItems.count
    }
    //    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        label.text = itemNums[row]
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
