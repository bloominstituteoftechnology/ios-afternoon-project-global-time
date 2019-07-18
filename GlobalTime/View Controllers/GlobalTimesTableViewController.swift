//
//  GlobalTimesTableViewController.swift
//  GlobalTime
//
//  Created by Kat Milton on 7/18/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

protocol TimeZonesDelegate: class {
    func didChooseTimeZone(_ timezone: String)
}


class GlobalTimesTableViewController: UITableViewController {
    
    var timeZones: [String] = []
    
    var isDark: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Global Times"
        
        timeZones.append(TimeZone.current.identifier)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func toggleTheme(_ sender: UIBarButtonItem) {
        if isDark {
            AppearanceHelper.setLightAppearance()
            sender.title = "Dark"
        } else {
        AppearanceHelper.setDarkAppearance()
            sender.title = "Light"
            
        }
        isDark = !isDark
        
        let windows = UIApplication.shared.windows
        for window in windows {
            for view in window.subviews {
                view.removeFromSuperview()
                window.addSubview(view)
            }
        }
        
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return timeZones.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeZoneCell", for: indexPath) as! ClockTableViewCell

        // Configure the cell...
        
        let time = timeZones[indexPath.row]
        cell.clockView?.timezone = TimeZone.init(identifier: time)
        
        var city: String = ""
        let zones = time.split(separator: "/")
        
        if zones.count == 3 {
            city = zones[2].replacingOccurrences(of: "_", with: " ")
        } else if zones.count == 2 {
            city = zones[1].replacingOccurrences(of: "_", with: " ")
        } else {
            city = zones[0].replacingOccurrences(of: "_", with: " ")
        }
        
//        let city = zones[1].replacingOccurrences(of: "_", with: " ")
        cell.textLabel?.text = city
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            timeZones.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddTimeZone" {
            let navVC = segue.destination as! UINavigationController
            let timeZoneVC = navVC.topViewController as! TimeZonesTableViewController
            timeZoneVC.delegate = self
            
        }
        
    }
    

}


extension GlobalTimesTableViewController: TimeZonesDelegate {
    
    
    func didChooseTimeZone(_ timezone: String) {
        navigationController?.dismiss(animated: true, completion: nil)
        timeZones.append(timezone)
        tableView.reloadData()
        
        
    }
    
    
    
}
