//
//  Measurements.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import RealmSwift

class Measurements: Object {
    
    //MARK: Properties
    dynamic var height = 3.1416
    dynamic var weight = 3.1416
    dynamic var wristMeasure = 3.1416
    dynamic var physicalActivity = 1
    dynamic var id = 0
    
   /* //MARK: Initializer
    init?(height: Double, weight: Double, wristMeasure: Double, physicalActivity: UIPickerViewDelegate ){
        self.height = height
        self.weight = weight
        self.wristMeasure = wristMeasure
        self.physicalActivity = physicalActivity
        
        if height < 0 || weight < 0 || wristMeasure < 0 {
            return nil 
        }
    } */
    
    
    
}
