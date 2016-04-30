//
//  SecondViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/16/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit
import RealmSwift

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    //MARK: Properties 
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var bodyFrameLabel: UILabel!
    @IBOutlet weak var physicalActivityPicker: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var pickerActivity: UIPickerView!
    @IBOutlet weak var diameterTextField: UITextField!

   
    @IBOutlet weak var activityPickerView: UIPickerView!
    var pickerActivityData: [String] = [String]()
    
    
    // MARK: Realm
    var measurements = Measurements()
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Connect data:
        
        
        weightTextField.delegate = self
        heightTextField.delegate = self
        diameterTextField.delegate = self
        self.pickerActivity.delegate = self
        self.pickerActivity.dataSource = self
    
        weightTextField.tag = 0
        heightTextField.tag = 1
        diameterTextField.tag = 2
        if let measurements = realm.objects(Measurements).filter("id == 0").first {
            self.measurements = measurements
            weightTextField.text = "\(self.measurements.weight)"
            heightTextField.text = "\(self.measurements.height)"
            diameterTextField.text = "\(self.measurements.wristMeasure)"
            physicalActivityPicker.text = "\(measurements.physicalActivity)"
            self.pickerActivity.selectRow(0, inComponent: 0, animated: false)
            switch measurements.physicalActivity {
            case 0:
                physicalActivityPicker.text = "Sedentary"
            case 1:
                physicalActivityPicker.text = "Lightly Active"
            case 2:
                physicalActivityPicker.text = "Moderately Active"
            case 3:
                physicalActivityPicker.text = "Very Active"
            case 4:
                physicalActivityPicker.text = "Extra Active"
            default:
                physicalActivityPicker.text = "Physical Activity"
        
            }
        }
        else {
            measurements.weight = 0
            measurements.height = 0
            measurements.wristMeasure = 0
            measurements.physicalActivity = 0
            measurements.id = 0
            try! realm.write {
                realm.add(measurements) 
            }
        }
        
        //Insert objects in the array.
        pickerActivityData = ["Sedentary - little or no exercise", "Lightly Active - 1-3 times/week", "Moderately Active - 3-5 times/week", "Very Active - 6-7 times/week", "Extra Active"]
        
    
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
        switch row {
        case 0:
            physicalActivityPicker.text = "Sedentary"
            
        case 1:
            physicalActivityPicker.text = "Lightly Active"
          
        case 2:
            physicalActivityPicker.text = "Moderately Active"
            
        case 3:
            physicalActivityPicker.text = "Very Active"
            
        case 4:
            physicalActivityPicker.text = "Extra Active"
            
        default:
            physicalActivityPicker.text = "Physical Activity"
        }
        
        try! realm.write {
        measurements.physicalActivity = row
        }
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
    
// Save user's info
    func textFieldDidEndEditing(textField: UITextField) {
        var mass = 0
        var bodyFraming = ""
         if textField.tag == 0 {
            if let text = Double(textField.text!) {
                try! realm.write {
                    measurements.weight = text
                }
            }
        }
        
        if textField.tag == 1 {
            if let text = Double(textField.text!) {
                try! realm.write {
                    measurements.height = text
                }
            }
        }
        
        if textField.tag == 2 {
            if let text = Double(textField.text!) {
                try! realm.write {
                    measurements.wristMeasure = text
                    
                }
                mass = Int(round(IMC(measurements.weight, height: measurements.height)))
                bodyFraming = BodyFrame(measurements.height, wristMeasure: measurements.wristMeasure)
                massLabel.text = "\(mass)"
                bodyFrameLabel.text = bodyFraming

            }
        }
    }
    

    // MARK: Methods 
    
    func IMC(weight: Double, height: Double)-> Double {
        var imc = 0.0
        imc = weight/(height*height)
        return imc
    }
    
    func BodyFrame(height: Double, wristMeasure: Double)-> String {
        var bodyFrame = 0.0
        bodyFrame = (height*100)/wristMeasure
        
            if bodyFrame > 10.9 {
            return "Small"
            }
            else if bodyFrame >= 9.9 {
                return "Medium"
            }
            else  {
                return "Large"
            }
        
    }
 
 
 

}