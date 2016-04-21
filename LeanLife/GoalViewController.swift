//
//  GoalViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
// 

import UIKit

class GoalViewController: UIViewController {
    
    //MARK: Actions 
    
    func calorieIntake(weight: Double, height: Double, age: Double, gender: String)-> Double {
        let weigthAdjusted = (10*weight)
        let heightInCentimeters = (height*100)
        let heightAdjusted = (6.25*heightInCentimeters)
        let ageAdjusted = (5*age)
        if gender == "male" {
            return weigthAdjusted + heightAdjusted - ageAdjusted + 5 
            
        } else {
            return weigthAdjusted + heightAdjusted - ageAdjusted - 161
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
