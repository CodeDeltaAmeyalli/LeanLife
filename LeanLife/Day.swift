//
//  Day.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class Day {
    
    //MARK: Properties 
    var date: NSDate
    var dailyCal: Int
    var consumedCal: Int
    var proteins: Double
    var carbohydrates: Double
    var fat: Double
    var water: Int
    var goal: String
    var usersPhoto: UIImage?
    var usersName: String
    
    //MARK: Initialization 
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
    
    
}
