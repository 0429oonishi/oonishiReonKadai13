//
//  FruitTableViewCell.swift
//  oonishiReonKadai13
//
//  Created by 大西玲音 on 2021/08/04.
//

import UIKit

final class FruitTableViewCell: UITableViewCell {

    @IBOutlet private weak var fruitsNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
        
    }
    
    func configure(fruit: Fruit) {
        fruitsNameLabel.text = fruits
    }
    
}

struct Fruit {
    let name: String
    let isChecked: Bool
}
