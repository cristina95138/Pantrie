//
//  FoodListTableViewController.swift
//  Pantrie
//
//  Created by Cristina Lawson on 4/27/19.
//  Copyright © 2019 Cristina Lawson. All rights reserved.
//

import UIKit

//struct foodData {
//    var foodName: String
//    var foodImage: UIImage
//}

class FoodViewController: UITableViewController {
    
    
    let foodItems = ["Milk", "Cheese", "Apples", "Oranges", "Tomatoes", "Lettuce", "Eggs", "Bread"]
    
    let foodImages = ["milk.png", "cheese.png", "apple.png", "orange.png", "tomato.png", "lettuce.png", "egg.png", "baguette.png"]
    
    var numRows = 1
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()

        // Uncomment the following line to preserve selection between presentations
//         self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let data = sender as? foodData else {
//            return
//        }
//        if segue.identifier == "foodSegue" {
//            if let nextViewController = segue.destination as? FirstViewController {
//                nextViewController.foodName.text = data.foodName
//                nextViewController.foodImage.image = data.foodImage
//            }
//        }
//    }
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodItems.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let data = foodData(foodName: foodItems[indexPath.row], foodImage: UIImage(named: foodImages[indexPath.row])!)
//        self.performSegue(withIdentifier: "foodSegue", sender: data)
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        
        let food = foodItems[indexPath.row]
        
        cell.FoodLabel.text = food
        
        cell.FoodImage.image = UIImage(named: foodImages[indexPath.row])
        // Configure the cell...

        return cell
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
