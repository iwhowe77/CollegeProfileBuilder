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
    
    override func viewDidLoad() {
        nameTextField.text = selectedCollege.name
        locationTextField.text = selectedCollege.location
        enrollmentTextField.text = String(selectedCollege.numberOfStudents)
        collegeImage.image = selectedCollege.image
        
        
        
    }
    
    
    
    
}