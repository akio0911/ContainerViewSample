//
//  TableViewController.swift
//  ContainerViewSample
//
//  Created by akio0911 on 2016/05/10.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var items: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = (1...50).map{ String($0) }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
