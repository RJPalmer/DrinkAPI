//
//  Measurement+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData


extension Measurement {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Measurement> {
        return NSFetchRequest<Measurement>(entityName: "Measurement")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var receipeMesrmnt: Receipe?

}

extension Measurement : Identifiable {

}
