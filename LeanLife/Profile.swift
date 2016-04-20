//
//  Profile.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class Profile {
    
    //MARK: Properties 
    var photo: UIImage?
    var name: String
    var age: Int
    var allergies: String
    var gender: UISegmentedControlSegment
    
    //MARK: Initialization
    init?(photo: UIImage, name: String, age: Int, allergies: String, gender:UISegmentedControlSegment){
        self.photo = photo
        self.name = name
        self.age = age
        self.allergies = allergies
        self.gender = gender
        
        if age < 0  {
            return nil
        }
    }
    
}
