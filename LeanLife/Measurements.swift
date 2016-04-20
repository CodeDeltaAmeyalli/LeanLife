//
//  Measurements.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class Measurements {
    
    //MARK: Properties
    var height: Double
    var weight: Double
    var wristMeasure: Double
    var physicalActivity: UIPickerViewDelegate
    
    //MARK: Initializer 
    init?(height: Double, weight: Double, wristMeasure: Double, physicalActivity: UIPickerViewDelegate ){
        self.height = height
        self.weight = weight
        self.wristMeasure = wristMeasure
        self.physicalActivity = physicalActivity
        
        if height < 0 || weight < 0 || wristMeasure < 0 {
            return nil 
        }
    }
    
    
    
}
