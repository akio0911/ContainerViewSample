//
//  ViewController.swift
//  ContainerViewSample
//
//  Created by akio0911 on 2016/05/09.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableViewController: TableViewController {
        return childViewControllers.first as! TableViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
}

