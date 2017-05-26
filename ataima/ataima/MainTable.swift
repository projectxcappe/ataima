//
//  ViewController.swift
//  ataima
//
//  Created by Cass Pangell on 5/21/17.
//  Copyright © 2017 casspangell. All rights reserved.
//

import UIKit

class MainTable: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


}



class StudentCell:UITableViewCell {
    
    @IBOutlet weak var attendanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var programsLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ataNumberLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
}

