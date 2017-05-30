//
//  MainPage.swift
//  ataima
//
//  Created by Cass Pangell on 5/29/17.
//  Copyright © 2017 casspangell. All rights reserved.
//

import UIKit

class MainPage: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }

    var studentData:[String:String] = ["Attendance":"G", "Name":"Joe", "Program":"Tiny Tigers", "Age":"10", "ATANumber":"1234567890", "Rank":"Purple"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        cell.nameLabel.text = studentData["Name"]
        cell.programsLabel.text = studentData["Program"]
        cell.ageLabel.text = studentData["Age"]
        cell.ataNumberLabel.text = studentData["ATANumber"]
        cell.rankLabel.text = studentData["Rank"]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.rowHeight = 75
        return 40
    }
    
    
}

class MainTableView: UITableViewController {
    
}


class StudentCell:UITableViewCell {
    
    @IBOutlet weak var attendanceView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var programsLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ataNumberLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
}
