//
//  ViewController.swift
//  ContainerViewSample
//
//  Created by akio0911 on 2016/05/09.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Table {
        case Table1
        case Table2
    }
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    
    var tableViewController: TableViewController {
        return childViewControllers.first as! TableViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayTable(.Table1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressAddButton(sender: AnyObject) {
        tableViewController.addRow()
    }

    @IBAction func pressRemoveAllButton(sender: AnyObject) {
        tableViewController.removeAllRow()
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
}

