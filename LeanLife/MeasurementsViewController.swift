//
//  SecondViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/16/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    //MARK: Properties 
    
    @IBOutlet weak var weightTextField: UITextField!

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var pickerActivity: UIPickerView!
    @IBOutlet weak var diameterTextField: UITextField!
    
    @IBOutlet weak var activityPickerView: UIPickerView!
    var pickerActivityData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Connect data:
        
        weightTextField.delegate = self
        heightTextField.delegate = self
        diameterTextField.delegate = self
        self.pickerActivity.delegate = self
        self.pickerActivity.dataSource = self
        
        //Insert objects in the array.
        pickerActivityData = ["Sedentary - little or no exercise", "Lightly Active - 1-3 times/week", "Moderately Active - 3-5 times/week", "Very Active - 6-7 times/week", "Extra Active"
        ]
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerActivityData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerActivityData[row]
    }
    
    // Catpure the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
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

