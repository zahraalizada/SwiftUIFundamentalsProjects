//
//  CityDetailCell.swift
//  TableCollectionTask
//
//  Created by Zahra Alizada on 13.04.24.
//

import UIKit

class CityDetailCell: UITableViewCell {

    @IBOutlet weak var cityDescriptionLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
