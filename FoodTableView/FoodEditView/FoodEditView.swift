//
//  FoodEditView.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import Foundation
import UIKit

class FoodEditViewController: UIViewController{
    
    func generalLabel() -> String{
        let auto = "e.g, organic, vegan"
        return auto
    }
    
    //
    //    let customBorderlessTextField: CustomBorderlessTextField = {
    //            let textField = CustomBorderlessTextField()
    //            textField.translatesAutoresizingMaskIntoConstraints = false
    //            textField.placeholder = "Type here"
    //            return textField
    //        }()
    //
    
    
    var getData = TableData()
    
    var generateData: TableDataProperties?
    
    
    let itemLabel = UILabel()
    let priceLabel = UILabel()
    let labelsLabel = UILabel()
    let imageLabel = UILabel()
    let descriptionLabel = UILabel()
    let contentLabel = UILabel()
    var itemTextField = UITextField()
    let priceTextField = UITextField()
    let labelsTextField = UITextField()
    let image = UIImageView()
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Edit item"
        
        view.addSubview(scrollView)
        
        scrolling()

        itemLabelConstraint()
        itemTextFieldConstraint()
        priceLabelConstraint()
        priceTextFieldConstraint()
        labelsLabelConstraint()
        labelsTextFieldConstraint()
        labelImageConstraint()
        imageConstraint()
        descriptionConstraint()
        contentConstraint()
    }
    
    func scrolling(){
        scrollView.addSubview(contentView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                scrollView.topAnchor.constraint(equalTo: view.topAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                
                contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1)
            ]
        )
    }
    
    
    func itemLabelConstraint(){
        contentView.addSubview(itemLabel)
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        itemLabel.text = "Item name*"
        itemLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        NSLayoutConstraint.activate(
            [
                itemLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
                itemLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                itemLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20)
            ]
        )
    }
    
    func itemTextFieldConstraint(){
        contentView.addSubview(itemTextField)
        itemTextField.translatesAutoresizingMaskIntoConstraints = false
        itemTextField.borderStyle = .roundedRect
        
        
        //let data = getData.populateData()
        // itemTextField.text = data[1].foodNameCell
        itemTextField.font = .systemFont(ofSize: 20, weight: .semibold)
        itemTextField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate(
            [
                itemTextField.topAnchor.constraint(equalTo: itemLabel.topAnchor, constant: 25),
                itemTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                itemTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 120)
            ]
        )
        itemTextField.text = generateData?.foodNameCell
    }
    
    func priceLabelConstraint(){
        contentView.addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.text = "Price"
        priceLabel.font = .systemFont(ofSize: 20, weight: .light)
        
        NSLayoutConstraint.activate(
            [
                priceLabel.topAnchor.constraint(equalTo: itemTextField.topAnchor, constant: 50),
                priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 55)
            ]
        )
    }
    
    func priceTextFieldConstraint(){
        contentView.addSubview(priceTextField)
        priceTextField.translatesAutoresizingMaskIntoConstraints = false
        priceTextField.borderStyle = .roundedRect
        
        
        let data = getData.populateData()
        priceTextField.text = data[2].foodPriceCell
        priceTextField.font = .systemFont(ofSize: 20, weight: .semibold)
        priceTextField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate(
            [
                priceTextField.topAnchor.constraint(equalTo: priceLabel.topAnchor, constant: 25),
                priceTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                priceTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 120)
            ]
        )
        priceTextField.text = generateData?.foodPriceCell
    }
    
    func labelsLabelConstraint(){
        contentView.addSubview(labelsLabel)
        labelsLabel.translatesAutoresizingMaskIntoConstraints = false
        labelsLabel.text = "Labels"
        labelsLabel.font = .systemFont(ofSize: 20, weight: .light)
        
        NSLayoutConstraint.activate(
            [
                labelsLabel.topAnchor.constraint(equalTo: priceTextField.topAnchor, constant: 50),
                labelsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                labelsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 55)
            ]
        )
    }
    
    func labelsTextFieldConstraint(){
        contentView.addSubview(labelsTextField)
        labelsTextField.translatesAutoresizingMaskIntoConstraints = false
        labelsTextField.borderStyle = .roundedRect
        labelsTextField.placeholder = generalLabel()
        labelsTextField.font = .systemFont(ofSize: 20, weight: .light)
        labelsTextField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate(
            [
                labelsTextField.topAnchor.constraint(equalTo: labelsLabel.topAnchor, constant: 25),
                labelsTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                labelsTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 120)
            ]
        )
    }
    
    func labelImageConstraint(){
        contentView.addSubview(imageLabel)
        imageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageLabel.text = "Image"
        imageLabel.font = .systemFont(ofSize: 20, weight: .light)
        
        NSLayoutConstraint.activate(
            [
                imageLabel.topAnchor.constraint(equalTo: labelsTextField.topAnchor, constant: 50),
                imageLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                imageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 55)
            ]
        )
    }
    
    func imageConstraint(){
        contentView.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        
//        let data = getData.populateData()
//        image.image = UIImage(named: data[2].foodImageCell)
        image.contentMode = .scaleAspectFit
        NSLayoutConstraint.activate(
            [
                image.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 20),
                image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 60)
            ]
        )
        image.image = UIImage(named: generateData?.foodImageCell ?? "No image to display")

    }
    func descriptionConstraint(){
        contentView.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.text = "Description"
        descriptionLabel.font = .systemFont(ofSize: 20, weight: .medium)
        
        NSLayoutConstraint.activate(
            [
                descriptionLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 50),
                descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 55)
            ]
        )
    }
    func contentConstraint(){
        contentView.addSubview(contentLabel)
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let data = getData.populateData()
        contentLabel.text = data[2].foodDescriptionCell
        contentLabel.font = .systemFont(ofSize: 20, weight: .light)
        
        NSLayoutConstraint.activate(
            [
                contentLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
                contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 60)
            ]
        )
        contentLabel.text = generateData?.foodDescriptionCell
    }
}
    



