//
//  Meals.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties 
    var photo: UIImage?
    var name: String
    var date: NSDate
    var quantity: Double
    var proteins: Int
    var carbohydrates: Int
    var fat: Int
    var calories: Int
    
    //MARK: Initialization 
    init?(photo: UIImage, name: String, date:NSDate, quantity: Double, proteins: Int, carbohydrates: Int, fat: Int, calories: Int){
      //Initialize stored properties 
        self.photo = photo
        self.name = name
        self.date = date
        self.quantity = quantity
        self.proteins = proteins
        self.carbohydrates = carbohydrates
        self.fat = fat
        self.calories = calories
        
        if name.isEmpty || quantity < 0 || proteins < 0 || carbohydrates < 0 || fat < 0 || calories < 0 {
            return nil 
        }
    }
   
    
    
    
   
    
}
