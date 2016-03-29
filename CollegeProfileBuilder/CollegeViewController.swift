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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CollegeItem", forIndexPath: indexPath)
        
        let college = collegeList[indexPath.row]
        
        configureTextForCell(cell, withChecklistItem: college)
        //configureCheckmarkForCell(cell, withChecklistItem: item)
        
        return cell
    }


    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            let item = collegeList[indexPath.row]
            
            //configureCheckmarkForCell(cell, withChecklistItem: item)
        }
        performSegueWithIdentifier("tableToInfo", sender: nil)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureTextForCell(cell: UITableViewCell, withChecklistItem item: College) {
        let label = cell.viewWithTag(1) as! UILabel
        label.text = item.name
    }
    
    
    
    
    
}

