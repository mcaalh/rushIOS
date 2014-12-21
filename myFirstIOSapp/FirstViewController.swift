//
//  FirstViewController.swift
//  myFirstIOSapp
//
//  Created by swift on 19/12/14.
//  Copyright (c) 2014 swift. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var items: [String] = ["42", "Cite U", "Jussieu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == 0
        {
            println("table 1")
        }
        if indexPath.row == 1
        {
            println("table 2")
        }
        if indexPath.row == 2
        {
            println("table 3")
        }

//        println("You selected cell #\(indexPath.row)!")
    }
}