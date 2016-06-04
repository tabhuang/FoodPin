//
//  RestaurantDetatilTableViewCell.swift
//  FoodPin
//
//  Created by Huang Jian-Yu on 2016/1/25.
//  Copyright © 2016年 Zitra. All rights reserved.
//

import Cocoa

class RestaurantDetatilTableViewCell: UITableViewCell , UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var fieldLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RestaurantDetatilTableViewCell
        
        //設定Cell
        switch indexPath.row
        {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 0:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 0:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 0:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
    }
    


}
