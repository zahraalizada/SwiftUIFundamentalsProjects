//
//  CountryCell.swift
//  CountryApp
//
//  Created by Zahra Alizada on 07.04.24.
//

import UIKit

class CountryCell: UITableViewCell {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
