//
//  FoodListTableViewCell.swift
//  Pantrie
//
//  Created by Cristina Lawson on 4/27/19.
//  Copyright © 2019 Cristina Lawson. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    @IBOutlet weak var FoodLabel: UILabel!
    
    @IBOutlet weak var FoodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
