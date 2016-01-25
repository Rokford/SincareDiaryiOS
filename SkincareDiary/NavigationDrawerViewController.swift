//
//  NavigationDrawerViewController.swift
//  SkincareDiary
//
//  Created by PLGRIZW on 21.01.2016.
//  Copyright © 2016 Mobinaut. All rights reserved.
//

import UIKit

class NavigationDrawerViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return 1
        }
        else
        {
            return AppDelegate.navArray.count
        }
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0)
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("navHeader", forIndexPath: indexPath) as! NavHeaderCell
            
            cell.titleLabel.text = "Skincare Diary"
            
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("navRow", forIndexPath: indexPath) as! NavRowCell
            
            cell.titleLabel.text = AppDelegate.navArray[indexPath.row];
            
            return cell
        }
    }
}
