//
//  ShapeViewController.swift
//  LeanLife
//
//  Created by Escuela Ameyalli on 4/20/16.
//  Copyright © 2016 Escuela Ameyalli. All rights reserved.
//

import UIKit

class ShapeViewController: UIViewController {

    @IBOutlet weak var shapeSelectedLabel: UILabel!
    @IBOutlet weak var shape1: UIImageView!
    
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
    
    @IBAction func shape1(sender: UITapGestureRecognizer) {
        shapeSelectedLabel.text = "Selected boy shape : 1"
        shape1.highlighted = true
    }
    @IBAction func shape2(sender: UITapGestureRecognizer) {
        shapeSelectedLabel.text = "Selected boy shape : 2"
    }
    
    @IBAction func shape3(sender: UITapGestureRecognizer) {
         shapeSelectedLabel.text = "Selected boy shape : 3"
    }
    
    @IBAction func shape4(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 4"
    }
    @IBAction func shape5(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 5"
    }

    @IBAction func shape6(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 6"
    }
    @IBAction func shape7(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 7"
    }
    @IBAction func shape8(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 8"
    }
    @IBAction func shape9(sender: AnyObject) {
        shapeSelectedLabel.text = "Selected boy shape : 9"
    }
    
 
}
