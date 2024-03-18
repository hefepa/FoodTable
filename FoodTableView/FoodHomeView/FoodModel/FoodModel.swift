//
//  FoodModel.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import Foundation

struct TableData {
    
    func populateData() -> [TableDataProperties]{
        [
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "JDUW JTJS dfiwidfns idfjs fiwdks djfhdnckdf dkfdk"),
            TableDataProperties(foodImageCell: "Banana", foodNameCell: "Berry", foodPriceCell: "#100", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "Strawberry", foodNameCell: "Strawbrry", foodPriceCell: "#70", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
            TableDataProperties(foodImageCell: "fruits", foodNameCell: "Yam", foodPriceCell: "#80", foodDescriptionCell: "Yam is sweet"),
        ]
        
    }
}

struct TableDataProperties{
    let foodImageCell: String
    let foodNameCell: String
    let foodPriceCell: String
    let foodDescriptionCell: String
}
