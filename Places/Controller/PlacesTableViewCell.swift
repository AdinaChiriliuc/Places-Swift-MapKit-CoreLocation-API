//
//  PlacesTableViewCell.swift
//  Places
//
//  Created by Adina Chiriliuc on 31/08/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var placesAddressLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
