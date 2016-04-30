//
//  Day.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit
import RealmSwift

class Day: Object{
    
    //MARK: Properties 
    dynamic var date: NSDate!
    dynamic var dailyCal = 0.0
    dynamic var consumedCal = 0.0
    dynamic var proteins = 0.0
    dynamic var carbohydrates = 0.0
    dynamic var fat = 0.0
    dynamic var water = 0
    dynamic var goal = ""
    dynamic var usersPhoto: String? = ""
    dynamic var usersName = ""
    dynamic var id = 0
    
   /* //MARK: Initialization
    init?(date: NSDate, dailyCal: Int, consumedCal: Int, proteins: Double, carbohydrates: Double, fat: Double, water: Int, goal: String, usersPhoto:UIImage, usersName: String){
        //Initialize stored Properties 
        self.date = date
        self.dailyCal = dailyCal
        self.consumedCal = consumedCal
        self.proteins = proteins
        self.carbohydrates = carbohydrates
        self.fat = fat
        self.water = water
        self.goal = goal
        self.usersName = usersName
        self.usersPhoto = usersPhoto
        
    }
 */
}
