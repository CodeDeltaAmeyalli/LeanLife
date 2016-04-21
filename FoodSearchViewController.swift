//
//  FoodSearchViewController.swift
//
//
//  Created by Escuela Ameyalli on 4/20/16.
//
//

import UIKit
import RealmSwiftBlogData
import RealmSwift


class MealSearchViewController: RealmSearchViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func searchViewController(controller: RealmSearchViewController, cellForObject object: Object, atIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("foodCell", forIndexPath: indexPath)
        
        if let food = object as? FoodObject {
            cell.textLabel?.text = food.title.capitalizedString
        }
        
        return cell
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
