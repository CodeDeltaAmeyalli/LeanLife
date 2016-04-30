//
//  AddViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: Properties 
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var quantityTextField: UITextField!
    @IBOutlet weak var quantitySegmentedControl: UISegmentedControl!
    @IBOutlet weak var carbohydratesTextField: UITextField!
    @IBOutlet weak var proteinsTextField: UITextField!
    @IBOutlet weak var fatTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    @IBOutlet weak var imageImageView: UIImageView!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    //MARK: Realm
    
    //MARK: TextField
    
    var myMeal = Meal()
    
    let realm = try! Realm()
    
    
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealNameTextField.delegate = self
        quantityTextField.delegate = self
        carbohydratesTextField.delegate = self
        proteinsTextField.delegate = self
        fatTextField.delegate = self
        caloriesTextField.delegate = self
        mealNameTextField.tag = 0
        quantityTextField.tag = 1
        carbohydratesTextField.tag = 2
        proteinsTextField.tag = 3
        fatTextField.tag = 4
        caloriesTextField.tag = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions 
  
        /* @IBAction func sliderValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value)
        myMeal.satiety = currentValue
 
       
    } */ 
    
    // MARK:  Navigation
    @IBAction func cancelButton(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if saveButton === sender {
            myMeal.mealName = mealNameTextField.text!
            try! realm.write {
                realm.add(myMeal)
            }
        
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    // MARK: UITextField
    /* found in: http://stackoverflow.com/questions/1347779/how-to-navigate-through-textfields-next-done-buttons */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        let nextTage=textField.tag+1;
        // Try to find next responder
        let nextResponder=textField.superview?.viewWithTag(nextTage) as UIResponder!
        
        if (nextResponder != nil){
            // Found next responder, so set it.
            nextResponder?.becomeFirstResponder()
        }
        else
        {
            // Not found, so remove keyboard
            textField.resignFirstResponder()
        }
        return false // We do not want UITextField to insert line-breaks.
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField.tag == 0 {
            if let text = textField.text {
                try! realm.write {
                    self.myMeal.mealName = text
                }
            }
            
        }
        if textField.tag == 1 {
            if let text = Double(textField.text!){
                if text >= 0 {
                    try! realm.write {
                        self.myMeal.quantity = text
                    }

                }
                
            }
        }
        if textField.tag == 2 {
            if let text = Double(textField.text!){
                if text >= 0 {
                    try! realm.write {
                        self.myMeal.carbohydrates = text
                    }
                    
                }
                
            }
        }
        
        if textField.tag == 3 {
            if let text = Double(textField.text!){
                if text >= 0 {
                    try! realm.write {
                        self.myMeal.proteins = text
                    }
                    
                }
                
            }
        }
        if textField.tag == 4 {
            if let text = Double(textField.text!){
                if text >= 0 {
                    try! realm.write {
                        self.myMeal.fat = text
                    }
                    
                }
                
            }
        }
        if textField.tag == 5 {
            if let text = Double(textField.text!){
                if text >= 0 {
                    try! realm.write {
                        self.myMeal.calories = text
                    }
                    
                }
                
            }
        }
    }
  

}


/*
 self.myMeal.quantity = Double(quantityTextField.text!)!
 self.myMeal.quantitySegementedControl = quantitySegmentedControl.selectedSegmentIndex
 self.myMeal.carbohydrates = Double(carbohydratesTextField.text!)!
 self.myMeal.proteins = Double(proteinsTextField.text!)!
 self.myMeal.fat = Double(fatTextField.text!)!
 self.myMeal.calories = Double(caloriesTextField.text!)!
 self.myMeal.image = UIImage(contentsOfFile: imageImageView.image)
 */

