//
//  FoodEditCell.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import Foundation
import UIKit

class FoodEditCell: UITableViewCell{
    var itemNameLabel = UILabel()
    var subNameTextField = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:  reuseIdentifier)
        design()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func design(){
        contentView.addSubview(itemNameLabel)
        contentView.addSubview(subNameTextField)
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        subNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
            itemNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20),
            itemNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            
            subNameTextField.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 20),
            subNameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subNameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20)
        ])
       
    }
    
    func callCell(with data: EditTableDataProperties){
//        foodViewContainer.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        foodViewContainer.layer.shadowColor = UIColor.black.cgColor
//        foodViewContainer.layer.shadowOpacity = 0.5
//        foodViewContainer.layer.shadowOffset = CGSize(width: 0, height: 2)
//        foodViewContainer.layer.shadowRadius = 4
//        
        itemNameLabel.text = data.firstTitle
        subNameTextField.text = data.subTitle

    }

}



