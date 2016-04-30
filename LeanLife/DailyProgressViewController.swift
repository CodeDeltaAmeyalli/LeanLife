//
//  DailyProgressViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit
import RealmSwift

class DailyProgressViewController: UIViewController {
    
    //MARK: Realm
    
    var daylyProgress = Day()
    let realm = try! Realm ()
    
    
    //MARK: Actions 
   
    @IBOutlet weak var energyProgressBar: UIProgressView!
    @IBOutlet weak var carbohydratesProgressBar: UIProgressView!
    @IBOutlet weak var fatProgressBar: UIProgressView!
    @IBOutlet weak var proteinsProgressBar: UIProgressView!
    @IBOutlet weak var waterProgressBar: UIProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 30

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
    @IBOutlet weak var valueLabel: UILabel!

    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperValueChanged(sender: UIStepper) {
        let step =  Float(sender.value) / 8
        waterProgressBar.setProgress(step, animated: true)
    }
}

