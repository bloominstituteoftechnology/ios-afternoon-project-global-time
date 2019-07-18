//
//  ClockTableViewCell.swift
//  GlobalTime
//
//  Created by Kat Milton on 7/18/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

class ClockTableViewCell: UITableViewCell {
    
    @IBOutlet var timeZoneLabel: UILabel!
    @IBOutlet var clockView: ClockView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
