//
//  Drink+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData

class Drink: NSManagedObject, Decodable{
    required convenience init(from decoder: Decoder) throws {
        
    }
}

extension Drink {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Drink> {
        return NSFetchRequest<Drink>(entityName: "Drink")
    }

    @NSManaged public var drinkID: UUID?
    @NSManaged public var typeOfDrink: String?
    @NSManaged public var dateModified: Date?
    @NSManaged public var drinkName: String?
    @NSManaged public var drinkReceipeId: UUID?
    @NSManaged public var drinkCategory: DrinkCategory?
    @NSManaged public var drinkGlassType: GlassType?
    @NSManaged public var drinkReceipe: Receipe?

}

extension Drink : Identifiable {

}
