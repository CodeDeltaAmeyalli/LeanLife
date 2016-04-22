//
//  Profile.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import RealmSwift

class Profile: Object {
    
    //MARK: Properties 
    dynamic var photo:String? = ""
    dynamic var name = ""
    dynamic var age = 0
    dynamic var allergies = ""
    dynamic var gender = ""
    dynamic var id = 0
    
   /* //MARK: Initialization
    init?(photo: UIImage, name: String, age: Int, allergies: String, gender:UISegmentedControlSegment){
        self.photo = photo
        self.name = name
        self.age = age
        self.allergies = allergies
        self.gender = gender
        
        if age < 0  {
            return nil
        }
    } */
    
}
