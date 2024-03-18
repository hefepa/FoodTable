//
//  EditFoodModel.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import Foundation
import UIKit

struct EditTableDate{
    var getData = TableData().populateData()
    
    func generateData() -> [EditTableDataProperties]{
        [
            EditTableDataProperties(firstTitle: "Item name*", subTitle:"" ),
            EditTableDataProperties(firstTitle: "Price*", subTitle:"" ),
            EditTableDataProperties(firstTitle: "Labels", subTitle:"e.g. organic, vegan" ),
            EditTableDataProperties(firstTitle: "Image", subTitle:"" ),
            EditTableDataProperties(firstTitle: "Description", subTitle:"" )
        ]
        
    }
}

struct EditTableDataProperties{
    let firstTitle: String
    let subTitle: String
}


func doSomethingWithTableData() {
    let tableData = TableData()
    let data = tableData.populateData()
    
    // Accessing the first element's foodNameCell property
    if let firstData = data.first {
        let foodName = firstData.foodNameCell
        print("Food Name: \(foodName)")
    }
}


//struct EditTableData {
//    var tableData = TableData()
//
//    var getData: [TableDataProperties] {
//        return tableData.populateData()
//    }
//
//    func generateData() -> [EditTableDataProperties] {
//        var result: [EditTableDataProperties] = []
//
//        for data in getData {
//            let editData = EditTableDataProperties(firstTitle: data.foodNameCell, subTitle: "Your Subtitle")
//            result.append(editData)
//        }
//
//        return result
//    }
//}
