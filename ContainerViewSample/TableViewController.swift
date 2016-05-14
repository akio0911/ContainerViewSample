//
//  TableViewController.swift
//  ContainerViewSample
//
//  Created by akio0911 on 2016/05/10.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var items: [Int] = [1, 2, 3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row].description
        return cell
    }
    
    internal func addRow() {
        items.append( items.count + 1 )
        let indexPath = NSIndexPath(forRow: items.count - 1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    
    internal func removeAllRow() {
        let indexPaths = (0..<items.count).map{ NSIndexPath(forRow: $0, inSection: 0) }

        items.removeAll()
        tableView.deleteRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
    }
}
