//
//  ViewController.swift
//  Demonstration
//
//  Created by Maxence de Cussac on 11/10/2015.
//  Copyright © 2015 Maxence de Cussac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var users:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        users = ["Maxence", "Benoit"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("commandeIdentifier") as! CommandeCell!
        cell.labelName.text = users[indexPath.row]
        cell.imageView?.image = UIImage(named: "Avatar\(users[indexPath.row])")
        return cell
    }

    @IBAction func addPeople(sender: UIBarButtonItem) {
        users.append("Random")
        self.tableView.reloadData()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailCommandeView" {
            segue.destinationViewController
        }
    }
}

class CommandeCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}



