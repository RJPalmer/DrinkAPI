//
//  Receipe+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData


extension Receipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Receipe> {
        return NSFetchRequest<Receipe>(entityName: "Receipe")
    }

    @NSManaged public var ingredientName: String?
    @NSManaged public var ingredientMeasurement: String?
    @NSManaged public var receipeId: Int64
    @NSManaged public var id: UUID?
    @NSManaged public var receipeFor: Drink?
    @NSManaged public var ingrdntName: Ingredient?
    @NSManaged public var ingrdntMesrmnt: Measurement?

}

extension Receipe : Identifiable {

}
