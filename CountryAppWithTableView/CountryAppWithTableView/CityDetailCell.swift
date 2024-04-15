//
//  CityDetailCell.swift
//  CountryApp
//
//  Created by Zahra Alizada on 08.04.24.
//

import UIKit

class CityDetailCell: UITableViewCell {

    @IBOutlet weak var cityDescLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
