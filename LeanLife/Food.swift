//
//  Food.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import RealmSwift

class Food: Object {
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