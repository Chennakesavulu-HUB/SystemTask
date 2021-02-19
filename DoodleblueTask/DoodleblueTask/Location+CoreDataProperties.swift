//
//  Location+CoreDataProperties.swift
//  DoodleblueTask
//
//  Created by Chennakesavulu on 18/02/21.
//  Copyright © 2021 Chennakesavulu. All rights reserved.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var areaLocation: String?

}
