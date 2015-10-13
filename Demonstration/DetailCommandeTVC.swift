//
//  File.swift
//  Demonstration
//
//  Created by Maxence DE CUSSAC on 13/10/2015.
//  Copyright © 2015 Maxence de Cussac. All rights reserved.
//

import Foundation
import UIKit

class DetailCommandeTVC : UITableViewController {
    var items = [String]()
    var total = 0
    
    override func viewDidLoad() {
        items = ["Vodka","Jäger"]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("commandeCellIdentifier") as UITableViewCell!
        cell.textLabel!.text = items[indexPath.row]
        let randomNumber = random() % 10
        total = total + randomNumber
        cell?.detailTextLabel!.text = "\(randomNumber)€";
        
        return cell
    }
    
    @IBAction func displayTotal(sender: AnyObject) {
        if sender.isKindOfClass(UIBarButtonItem) {
            let alert = UIAlertController(title: "Total", message: "Voulez vous règler l'addition de \(total)€ ?", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            items.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Top)
        }
    }
}