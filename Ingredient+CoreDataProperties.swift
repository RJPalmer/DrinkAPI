//
//  Ingredient+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData


extension Ingredient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredient> {
        return NSFetchRequest<Ingredient>(entityName: "Ingredient")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var receipeIngrdnt: Receipe?

}

extension Ingredient : Identifiable {

}
