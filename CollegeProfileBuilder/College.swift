//
//  College.swift
//  CollegeProfileBuilder
//
//  Created by Ian W. Howe on 3/18/16.
//  Copyright © 2016 Ian W. Howe. All rights reserved.
//

import Foundation
import UIKit

class College {
    var name: String
    var location: String
    var numberOfStudents: Int
    var image: UIImage
    
    init() {
        name = "N/A"
        location = "N/A"
        numberOfStudents = 0
        image = UIImage()
    }
    
    init(newName: String, newLocation: String, newNumberOfStudents: Int, newImage: UIImage) {
        name = newName
        location = newLocation
        numberOfStudents = newNumberOfStudents
        image = newImage
    }
    
    
    
    
    
}