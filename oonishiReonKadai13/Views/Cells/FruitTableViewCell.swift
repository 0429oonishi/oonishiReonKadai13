//
//  FruitTableViewCell.swift
//  oonishiReonKadai13
//
//  Created by 大西玲音 on 2021/08/04.
//

import UIKit

final class FruitTableViewCell: UITableViewCell {

    @IBOutlet private weak var fruitNameLabel: UILabel!
    @IBOutlet private weak var checkButton: UIButton!
    
    static var identifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        checkButton.isHidden = true
        fruitNameLabel.text = ""
        
    }
    
    func configure(fruit: Fruit) {
        fruitNameLabel.text = fruit.name
        checkButton.isHidden = !fruit.isChecked
    }
    
}
