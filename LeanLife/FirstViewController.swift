//
//  FirstViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/16/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit
import RealmSwift

class FirstViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var allergieTextField: UITextField!
    @IBOutlet weak var profilePhotoImageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var genderSegmentedController: UISegmentedControl!
   
    
    // MARK: TextFields
    
    
    // MARK: Realm
    var profile = Profile()
    
    let realm = try! Realm()
    
    //self = FirstViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // FirstViewController is delegate of textFields
       
        nameTextField.delegate = self
        ageTextField.delegate = self
        allergieTextField.delegate = self
         // Tag is asigned so that the code knows who are you talking about
        nameTextField.tag = 0
        ageTextField.tag = 1
        allergieTextField.tag = 2
        // if let serves to test if something exists, or is defined as
        if let profile = realm.objects(Profile).filter("id == 0").first {
            // var profile will save what is in Realm
            self.profile = profile
            // it will show the info you've previously saved
            nameTextField.text = self.profile.name 
            profileLabel.text = self.profile.name
            allergieTextField.text = self.profile.allergies
            ageTextField.text = String(self.profile.age)
            
            /*if self.profile.gender == "Male"{
               genderSegmentedController.selectedSegmentIndex == 0

            }
            
            else {
                genderSegmentedController.selectedSegmentIndex == 1
            } */
            /*
 AppDelegate *delegate=[[UIApplication sharedAppliection]delegate];
 [_Segment setSelectedSegmentIndex:delegate.selectedIndex];
 } */
  
        } else {
            // if there is nothing saved, you will create a new record in realm
            profile.id = 0
            profile.age = 0
            profile.name = " "
            profile.allergies = " "
            // realm will write and store what you have saved
            try! realm.write {
                realm.add(profile)
            }
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        // Dismiss the picker if the user canceled.
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    // This allows the user to pick an image. 
    // Obtained from Apple's Food Tracker
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        // The info dictionary contains multiple representations of the image, and this uses the original.
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        
        
        // Set photoImageView to display the selected image.
        
        profilePhotoImageView.image = selectedImage
        // Set Realm to save image
        try! realm.write{
            profile.photo = String(selectedImage)
        }
        
        
        // Dismiss the picker.
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    //MARK: Actions
    
    
    
    @IBAction func selectProfilePhotoGestureRecognizer(sender: UITapGestureRecognizer) {
        
        // Hide the keyboard.
        
        nameTextField.resignFirstResponder()
        
        
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        
        let imagePickerController = UIImagePickerController()
        
        
        
        // Only allow photos to be picked, not taken.
        
        imagePickerController.sourceType = .Camera
        
        
        
        // Make sure ViewController is notified when the user picks an image.
        
        imagePickerController.delegate = self
        
        
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
        
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        /*
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
        }*/
        return false // We do not want UITextField to insert line-breaks.
    }
    func textFieldDidEndEditing(textField: UITextField) {
        if textField.tag == 0 {
            if let text = textField.text {
                try! realm.write {
                    profile.name = text
                }
                profileLabel.text = text
            }
            
        }
        else if textField.tag == 1 {
            if let text = Int(textField.text!) {
                try! realm.write{
                    profile.age = text
                }
            }
        }
        else if textField.tag == 2 {
            if let text = textField.text {
                try! realm.write{
                    profile.allergies = text
                }
            }
        }
        
    }
    @IBAction func segmentController(sender: UISegmentedControl) {
            if sender.selectedSegmentIndex == 0 {
                try! realm.write {
                    profile.gender = "Male"
                }
            }
        else if sender.selectedSegmentIndex == 1 {
            try! self.realm.write {
                self.profile.gender = "Female"
            }
        }
        
    }
    //User changes Selected Control Index 
 
    

}
   




