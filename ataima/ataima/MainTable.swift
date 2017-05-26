//
//  ViewController.swift
//  ataima
//
//  Created by Cass Pangell on 5/21/17.
//  Copyright © 2017 casspangell. All rights reserved.
//

import UIKit

class MainTable: UITableViewController {
    
    var studentData:[String:String] = ["Attendance":"G", "Name":"Joe", "Program":"Tiny Tigers", "Age":"10", "ATANumber":"1234567890", "Rank":"Purple"]

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        cell.nameLabel.text = studentData["Name"]
        cell.programsLabel.text = studentData["Program"]
        cell.ageLabel.text = studentData["Age"]
        cell.ataNumberLabel.text = studentData["ATANumber"]
        cell.rankLabel.text = studentData["Rank"]
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.rowHeight = 75
        return 1
    }


}


class StudentCell:UITableViewCell {
    
    @IBOutlet weak var attendanceView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var programsLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ataNumberLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
}

