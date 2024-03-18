//
//  TableViewCell.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodViewContainer: UIView!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodPrice: UILabel!    
    @IBOutlet weak var foodDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //foodViewContainer.layer.borderWidth = 3
        //foodViewContainer.layer.borderColor = UIColor.blue.cgColor
        
        foodViewContainer.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        foodViewContainer.layer.shadowColor = UIColor.black.cgColor
        foodViewContainer.layer.shadowOpacity = 0.5
        foodViewContainer.layer.shadowOffset = CGSize(width: 1, height: 1)
        foodViewContainer.layer.shadowRadius = 13
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(with data: TableDataProperties){
        
        foodImage.image = UIImage(named: data.foodImageCell)
        foodName.text = data.foodNameCell
        foodPrice.text = data.foodPriceCell
        foodDescription.text = data.foodDescriptionCell
    }
    
}
