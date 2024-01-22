//
//  GlassType+CoreDataProperties.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//
//

import Foundation
import CoreData


extension GlassType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GlassType> {
        return NSFetchRequest<GlassType>(entityName: "GlassType")
    }

    @NSManaged public var name: String?
    @NSManaged public var typeOfGlass: NSSet?

}

// MARK: Generated accessors for typeOfGlass
extension GlassType {

    @objc(addTypeOfGlassObject:)
    @NSManaged public func addToTypeOfGlass(_ value: Drink)

    @objc(removeTypeOfGlassObject:)
    @NSManaged public func removeFromTypeOfGlass(_ value: Drink)

    @objc(addTypeOfGlass:)
    @NSManaged public func addToTypeOfGlass(_ values: NSSet)

    @objc(removeTypeOfGlass:)
    @NSManaged public func removeFromTypeOfGlass(_ values: NSSet)

}

extension GlassType : Identifiable {

}
