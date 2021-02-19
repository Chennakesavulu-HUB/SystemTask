//
//  ViewController.swift
//  DoodleblueTask
//
//  Created by Chennakesavulu on 18/02/21.
//  Copyright © 2021 Chennakesavulu. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var gatLocationsArray : [Location] = []

    @IBOutlet var listTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gatLocationsArray = CoredataHelper.shareInstance.getData()
        print(self.gatLocationsArray)
        self.listTV.tableFooterView = UIView()

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if !self.gatLocationsArray.isEmpty {
            self.listTV.delegate = self
            self.listTV.dataSource = self
            self.listTV.reloadData()
        } else {
            DispatchQueue.main.async {
                let alert = UIAlertController(title: "Sorry", message: "No Data Avilable", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                 self.present(alert, animated: true, completion: nil)
            }
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gatLocationsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableviewCell
        cell.cellLabel.text = self.gatLocationsArray[indexPath.row].areaLocation
        
        return cell
    }
}

