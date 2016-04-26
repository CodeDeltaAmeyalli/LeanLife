//
//  GoalViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
// 

import UIKit
import RealmSwift


class GoalViewController: UIViewController {
    // MARK: Realm
    var meta = Goal()
    
    let realm = try! Realm()
    
    @IBOutlet weak var WeightGoal: UILabel!
    @IBOutlet weak var segmentesControl: UISegmentedControl!
    @IBAction func indexChanged(sender: UISegmentedControl){
        switch segmentesControl.selectedSegmentIndex
        {
        
            case 0:
    
                try! realm.write {
                    meta.goal = "Lose"
                }
                WeightGoal.text = meta.goal
    
            case 1:
                
                try! realm.write {
                    meta.goal = "Maintain"
                }
                WeightGoal.text = meta.goal
     
            case 2:
                
                try! realm.write {
                    meta.goal = "Gain"
                }
                WeightGoal.text = meta.goal
                
         default:
         break;
        }
    }
    
    
    
    
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
    
   /* let proteinIntake = calorieIntake(currentValue)
        )
 */

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     
        if let goal = realm.objects(Goal).filter("id == 0").first{
            print("hello")
            meta = goal
            WeightGoal.text = meta.goal
            switch meta.goal {
            case "Lose":
                segmentesControl.selectedSegmentIndex = 0
            case "Maintain":
                segmentesControl.selectedSegmentIndex = 1
            case "Gain":
                segmentesControl.selectedSegmentIndex = 2
            default:
                segmentesControl.selectedSegmentIndex = UISegmentedControlNoSegment
            }
        } else {
            meta.goal = " "
            meta.id = 0
            try! realm.write{
                realm.add(meta)
            }
        }
        
        
            }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }



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


