//
//  AppearanceHelper.swift
//  GlobalTime
//
//  Created by Kat Milton on 7/18/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    
    // Colors
    
    static var almostBlack = UIColor(red: 2.0/255.0, green: 1.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var grayish = UIColor(red: 244.0/255.0, green: 239.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    static var blueColor = UIColor(red: 0.0/255.0, green: 39.0/255.0, blue: 66.0/255.0, alpha: 1.0)
    static var yellowColor = UIColor(red: 229.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    
    
    static func setDarkAppearance() {
        UIButton.appearance().tintColor = grayish
        
        UINavigationBar.appearance().barTintColor = almostBlack
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: grayish]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        
        UITableView.appearance().backgroundColor = almostBlack
        UITableViewCell.appearance().backgroundColor = almostBlack
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = yellowColor
        UILabel.appearance(whenContainedInInstancesOf: [ClockTableViewCell.self]).textColor = yellowColor
        
    }
    
    static func setLightAppearance() {
        UIButton.appearance().tintColor = blueColor
        
        UINavigationBar.appearance().barTintColor = grayish
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: blueColor]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        
        UITableView.appearance().backgroundColor = grayish
        UITableViewCell.appearance().backgroundColor = grayish
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = blueColor
        UILabel.appearance(whenContainedInInstancesOf: [ClockTableViewCell.self]).textColor = blueColor
    }
    
}
