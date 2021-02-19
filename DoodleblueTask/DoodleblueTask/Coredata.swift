//
//  Coredata.swift
//  DoodleblueTask
//
//  Created by Chennakesavulu on 18/02/21.
//  Copyright © 2021 Chennakesavulu. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoredataHelper  {
    
    static var shareInstance = CoredataHelper()
    
    let context = (UIApplication.shared.delegate as?AppDelegate)?.persistentContainer.viewContext
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    func saveDetails(object: [String:Any]) {
        
        let userDetailes = NSEntityDescription.insertNewObject(forEntityName: "Location", into: context!) as! Location
        userDetailes.areaLocation = object["location"] as? String
        
        do {
            try context?.save()
        }
        catch{
            print("no values is there")
        }
    }

    
    // For get ItemDetails Data
    func getData() ->  [Location] {
        
        var getUserDetailes = [Location]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Location")
        do {
            getUserDetailes = try context?.fetch(fetchRequest) as! [Location]
        }
        catch {
            print("Can not get the data from the server")
        }
        return getUserDetailes
    }
   
}
