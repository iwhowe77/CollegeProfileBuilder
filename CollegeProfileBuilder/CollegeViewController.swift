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

    required init?(coder aDecoder: NSCoder) {
        collegeList = [College]()
        
        let row0item = College(newName: "University of Illinois", newLocation: "Champaign", newNumberOfStudents: 44087, newImage: UIImage())
        collegeList.append(row0item)
        
        let row1item = College(newName: "Harper College", newLocation: "Champaign", newNumberOfStudents: 44087, newImage: UIImage())
        collegeList.append(row0item)
        
        let row2item = College(newName: "University of Illinois", newLocation: "Champaign", newNumberOfStudents: 44087, newImage: UIImage())
        collegeList.append(row0item)
        
        
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


}

