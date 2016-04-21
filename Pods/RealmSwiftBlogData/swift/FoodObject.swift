//
//  BlogObject.swift
//  RealmSearchViewControllerExample
//
//  Created by Adam Fish on 10/2/15.
//  Copyright © 2015 Adam Fish. All rights reserved.
//

import RealmSwift


class FoodObject: Object {
    // MARK: Properties
    dynamic var name = ""
    dynamic var carbohydrates = ""
    dynamic var proteins = ""
    dynamic var fats = ""
    dynamic var calories = ""
    dynamic var quantityGrams1 = ""
    dynamic var quantityGrams2 = ""
    dynamic var quantity1 = ""
    dynamic var quantity2 = ""
    dynamic var measure1 = ""
    dynamic var measure2 = ""
    dynamic var quantity = ""
    
    
 // MARK: Property Attributes
    override static func primaryKey() -> String? {
        return "name"
    }
    
   /* override public static func ignoredProperties() -> [String] {
        return ["url","imageURL"]
    }
    */
}