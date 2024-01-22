//
//  DrinkCategory+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData


extension DrinkCategory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DrinkCategory> {
        return NSFetchRequest<DrinkCategory>(entityName: "DrinkCategory")
    }

    @NSManaged public var name: String?
    @NSManaged public var typeOfDrink: NSSet?

}

// MARK: Generated accessors for typeOfDrink
extension DrinkCategory {

    @objc(addTypeOfDrinkObject:)
    @NSManaged public func addToTypeOfDrink(_ value: Drink)

    @objc(removeTypeOfDrinkObject:)
    @NSManaged public func removeFromTypeOfDrink(_ value: Drink)

    @objc(addTypeOfDrink:)
    @NSManaged public func addToTypeOfDrink(_ values: NSSet)

    @objc(removeTypeOfDrink:)
    @NSManaged public func removeFromTypeOfDrink(_ values: NSSet)

}

extension DrinkCategory : Identifiable {

}
