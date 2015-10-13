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
    
    override func viewDidLoad() {
        items = ["Vodka","Jäger"]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("commandeCellIdentifier") as UITableViewCell!
        cell.textLabel!.text = items[indexPath.row]
        let randomNumer = random() % 10
        cell?.detailTextLabel!.text = "\(randomNumer)€";
        
        return cell
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