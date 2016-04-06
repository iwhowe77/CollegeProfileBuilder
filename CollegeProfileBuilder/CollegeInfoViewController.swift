//
//  CollegeInfoViewController.swift
//  CollegeProfileBuilder
//
//  Created by Ian W. Howe on 3/30/16.
//  Copyright © 2016 Ian W. Howe. All rights reserved.
//

import Foundation
import UIKit
class CollegeInfoViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var enrollmentTextField: UITextField!
    
    @IBOutlet weak var collegeImage: UIImageView!
    var selectedCollege = College()
    
    var collegeIndex = Int()
    var collegeArray: [College] = []
    
    override func viewDidLoad() {
        nameTextField.text = selectedCollege.name
        locationTextField.text = selectedCollege.location
        enrollmentTextField.text = String(selectedCollege.numberOfStudents)
        collegeImage.image = selectedCollege.image
        
        
        
    }
    
    @IBAction func saveButton(sender: UIButton)
    {
        selectedCollege.name = nameTextField.text!
        selectedCollege.location = locationTextField.text!
        selectedCollege.numberOfStudents = Int(enrollmentTextField.text!)!
        selectedCollege.image = collegeImage.image!
    performSegueWithIdentifier("backToTableView", sender: nil)
   
        collegeArray[collegeIndex] = selectedCollege
    
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "backToTableView"
        {
            
             let tempController = segue.destinationViewController as! CollegeViewController
            tempController.collegeList = collegeArray
            
        }
    }
    
    
    
}