//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Huang Jian-Yu on 2016/1/21.
//  Copyright © 2016年 Zitra. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableView:UITableView!
    @IBAction func close(segue:UIStoryboardSegue){
        if let reviewViewController = segue.sourceViewController as? ReviewViewController{
            if let rating = reviewViewController.rating {
                ratingButton.setImage(UIImage(named: rating), forState: UIControlState.Normal)
            }
        }
    }
    @IBOutlet var ratingButton:UIButton!
    
    
    /*@IBOutlet var restaurantNameLabel:UILabel!
    @IBOutlet var restaurantLocationLabel:UILabel!
    @IBOutlet var restaurantTypeLabel:UILabel!*/
    
    /*var restaurantImage = ""
    var restaurantName = ""
    var restaurantLocation = ""
    var restaurantType = ""*/
    
    var restaurant:Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = restaurant.name
        
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: restaurant.image)
        /*restaurantImageView.clipsToBounds = true
        restaurantNameLabel.text = restaurant.name
        restaurantLocationLabel.text = restaurant.location
        restaurantTypeLabel.text = restaurant.type*/
        
        //tableView.backgroundColor = UIColor(red: 0.0/255.0, green:240.0/255.0, blue:240.0/255.0, alpha:0.2)
        //tableView.tableFooterView = UIView(frame: CGRectZero)
        //tableView.separatorColor = UIColor(red: 240.0/255.0, green:240.0/255.0, blue:240.0/255.0, alpha:0.8)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RestaurantDetailTableViewCell
        
        //設定Cell
        switch indexPath.row
        {
            case 0:
                cell.fieldLabel.text = "Name"
                cell.valueLabel.text = restaurant.name
            case 1:
                cell.fieldLabel.text = "Type"
                cell.valueLabel.text = restaurant.type
            case 2:
                cell.fieldLabel.text = "Location"
                cell.valueLabel.text = restaurant.location
            case 3:
                cell.fieldLabel.text = "Phone"
                cell.valueLabel.text = restaurant.phoneNumber
            case 4:
                cell.fieldLabel.text = "Been here"
                cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
            default:
                cell.fieldLabel.text = ""
                cell.valueLabel.text = ""
        }
        
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
