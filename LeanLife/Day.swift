//
//  Day.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import RealmSwift

class Day: Object {
    
    //MARK: Properties 
    dynamic var date = ""
    dynamic var dailyCal = 0
    dynamic var consumedCal = ""
    dynamic var proteins = ""
    dynamic var carbohydrates = ""
    dynamic var fat = ""
    dynamic var water = ""
    dynamic var goal = ""
    dynamic var usersPhoto:String? = ""
    dynamic var usersName = ""
    
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
        
    } */
    
    
}
