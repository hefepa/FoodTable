//
//  EditSection.swift
//  FoodTableView
//
//  Created by WEMA on 12/01/2024.
//

import Foundation
import UIKit

class EditSection: UIViewController{
    
    func generalLabel() -> String{
        let auto = "e.g, organic, vegan"
        return auto
    }
    
    var getData = TableData()
    
    
    let img = UIImageView()
    let price = UILabel()
    let item = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        imageConstraint()
        labelConstraint()
        priceConstraint()
        //        itemTextFieldConstraint()
        //        priceLabelConstraint()
        //        priceTextFieldConstraint()
        //        labelsLabelConstraint()
        //        labelsTextFieldConstraint()
    }
    
    func imageConstraint(){
        view.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        let data = getData.populateData()
        img.image = UIImage(named: data[1].foodImageCell)
        
        NSLayoutConstraint.activate(
            [
                img.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
                img.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                img.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
                img.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                img.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ]
        )
    }
    
    
    func labelConstraint(){
        view.addSubview(item)
        item.translatesAutoresizingMaskIntoConstraints = false
        let data = getData.populateData()
        item.text = data[2].foodNameCell
        item.textAlignment = .center
        
        
        NSLayoutConstraint.activate(
            [
                item.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 30),
                item.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                item.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ]
        )
    }
    
    func priceConstraint(){
        view.addSubview(price)
        price.translatesAutoresizingMaskIntoConstraints = false
        let data = getData.populateData()
        price.text = data[0].foodDescriptionCell
        price.textAlignment = .center
        price.numberOfLines = 3
        
        NSLayoutConstraint.activate(
            [
                price.topAnchor.constraint(equalTo: item.bottomAnchor, constant: 30),
                price.leadingAnchor.constraint(equalTo: view.leadingAnchor),//constant: 5),
                price.trailingAnchor.constraint(equalTo: view.trailingAnchor)//constant: -5)
            ]
        )
    }
}
