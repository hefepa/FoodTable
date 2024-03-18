//
//  FoodEditPage.swift
//  FoodTableView
//
//  Created by WEMA on 11/01/2024.
//

import Foundation
import UIKit

class FoodEditPage: UIViewController{
    var mine: [EditTableDataProperties] = EditTableDate().generateData()

    
    var editTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(editTableView)
        
        editTableView.delegate = self
        editTableView.dataSource = self
        editTableView.register(FoodEditCell.self, forCellReuseIdentifier: "FoodEditCell")
        
        NSLayoutConstraint.activate([
            editTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            editTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            editTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            editTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
}

extension FoodEditPage: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mine.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = editTableView.dequeueReusableCell(withIdentifier: "FoodEditCell", for: indexPath)
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        30
    }
}
