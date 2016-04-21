//
//  AddViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties 
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var quantityTextField: UITextField!
    @IBOutlet weak var quantitySegmentedControl: UISegmentedControl!
    @IBOutlet weak var carbsTextField: UITextField!
    @IBOutlet weak var proteinsTextField: UITextField!
    @IBOutlet weak var fatTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    @IBOutlet weak var imageImageView: UIImageView!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    let myMeal = Meal()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealNameTextField.delegate = self
        quantityTextField.delegate = self
        carbsTextField.delegate = self
        proteinsTextField.delegate = self
        fatTextField.delegate = self
        caloriesTextField.delegate = self
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
            let mealName = mealNameTextField.text
            let saveTabButton = saveButton.action
            let quantity = quantityTextField.text
            let quantitySegmentSelection = quantitySegmentedControl.selectedSegmentIndex
            let carbohydrates = carbsTextField.text
            let proteins = proteinsTextField.text
            let fats = fatTextField.text
            let calories = caloriesTextField.text
            let photo = imageImageView.image
        
            
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
  

}
