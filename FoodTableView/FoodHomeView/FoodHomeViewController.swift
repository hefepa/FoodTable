//
//  FoodHomeViewController.swift
//  FoodTableView
//
//  Created by WEMA on 10/01/2024.
//

import UIKit

class FoodHomeViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    var fruits: [TableDataProperties] = TableData().populateData()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .systemCyan
        
        tableView?.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //let padding: CGFloat = 30
//
//        tableView.contentInset = UIEdgeInsets(top: 30,left: 30, bottom: 30, right: 30)

    }
}
extension FoodHomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.updateCell(with: fruits[indexPath.item])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        290
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = fruits[indexPath.item]
        let editSection = FoodEditViewController()
        editSection.generateData = data
        print(editSection.generateData ?? "Nothing found")
        navigationController?.pushViewController(editSection, animated: true)
        //navigationItem.title = "Edit Item"
    }
    
}
