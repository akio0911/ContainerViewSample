//
//  ViewController.swift
//  ContainerViewSample
//
//  Created by akio0911 on 2016/05/09.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Table: Int {
        case Table1
        case Table2
    }
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    
    @IBOutlet weak var tableSegment: UISegmentedControl!
    
    private var displayTableViewController: TableViewController {
        return tableViewControllers[tableSegment.selectedSegmentIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableViewControllers[Table.Table1.rawValue].items
            = (1...10).map{ "Table1 Row " + $0.description }
        
        tableViewControllers[Table.Table2.rawValue].items
            = (1...10).map{ "Table2 Row " + $0.description }
        
        displayTable(.Table1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressAddButton(sender: AnyObject) {
        displayTableViewController.addRow()
    }

    @IBAction func pressRemoveAllButton(sender: AnyObject) {
        displayTableViewController.removeAllRow()
    }
    
    private func displayTable(table: Table) {
        switch table {
        case .Table1:
            containerView1.hidden = false
            containerView2.hidden = true
        case .Table2:
            containerView1.hidden = true
            containerView2.hidden = false
        }
    }
    
    private var tableViewControllers: [TableViewController] {
        return childViewControllers.map{ $0 as! TableViewController }
    }
    
    @IBAction func changeSegment(sender: AnyObject) {
        guard let segment = sender as? UISegmentedControl else { return }
        guard let table = Table(rawValue: segment.selectedSegmentIndex) else { return }
        
        displayTable(table)
    }
}

