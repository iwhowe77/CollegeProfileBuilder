//
//  ViewController.swift
//  CollegeProfileBuilder
//
//  Created by Ian W. Howe on 3/18/16.
//  Copyright © 2016 Ian W. Howe. All rights reserved.
//

import UIKit

class CollegeViewController: UITableViewController {
    
    var collegeList: [College]
    var selectedCollegeIndex = -1

    required init?(coder aDecoder: NSCoder) {
        collegeList = [College]()
        
        let row0item = College(newName: "University of Illinois", newLocation: "Champaign, IL", newNumberOfStudents: 44087, newImage: UIImage(named: "UofI.png")!)
        collegeList.append(row0item)
        
        let row1item = College(newName: "Harper College", newLocation: "Palatine, IL", newNumberOfStudents: 16060, newImage: UIImage(named: "Harper.png")!)
        collegeList.append(row1item)
        
        let row2item = College(newName: "Ball State University", newLocation: "Muncie, IN", newNumberOfStudents: 21000, newImage: UIImage(named: "BallState.png")!)
        collegeList.append(row2item)
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collegeList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //var cell = tableView.dequeueReusableCellWithIdentifier("CollegeItem")
        //TODO: Stuff
        var cell:UITableViewCell? =
        tableView.dequeueReusableCellWithIdentifier("CollegeItem")
        if (cell != nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                reuseIdentifier: "CollegeItem")

        }
        
        cell!.detailTextLabel!.text = "some text"
        let college = collegeList[indexPath.row]
        cell!.detailTextLabel!.text = college.location
        let label = cell!.textLabel
        label!.text = collegeList[indexPath.row].name
        
        
        
        return cell!
        
    }


    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedCollegeIndex = indexPath.row
        performSegueWithIdentifier("tableToInfo", sender: nil)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "tableToInfo" {
            print("segue Active")
            
            let tempController = segue.destinationViewController as! CollegeInfoViewController
            tempController.selectedCollege = collegeList[selectedCollegeIndex]
            
            
            
        }
    }
    
    
    @IBAction func addCollege(sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "College Info", message: "Press Done to add college to table ", preferredStyle: .Alert)
        let addAction = UIAlertAction(title: "Done", style: .Default, handler:
            
            {
                sender in
                let textField = alert.textFields![0] as UITextField
                print("Text field: \(textField.text)")
                let newItem = College(newName: alert.textFields![0].text!, newLocation: alert.textFields![1].text!, newNumberOfStudents: Int(alert.textFields![2].text!)!, newImage: UIImage())
                self.collegeList.append(newItem)
                let newRowIndex = self.collegeList.count
                let indexPath = NSIndexPath(forRow: newRowIndex, inSection: 0)
                let indexPaths = [indexPath]
                self.tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
                
        })
        alert.addAction(addAction)
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.placeholder = "name of college"
        })
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.placeholder = "Location of college"
        })
        alert.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            textField.placeholder = "Population of college"
        })
        presentViewController(alert,animated:true,completion: nil)
        
    }
    
    
    
    
    
    
    
}

