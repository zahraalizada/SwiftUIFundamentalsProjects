//
//  SouceCell.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 14.04.24.
//

import UIKit

class SouceCell: UITableViewCell {

    @IBOutlet weak var souceImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
