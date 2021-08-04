//
//  Fruit.swift
//  oonishiReonKadai13
//
//  Created by 大西玲音 on 2021/08/04.
//

import Foundation

struct Fruit {
    let name: String
    let isChecked: Bool
    
    static let testData: [Fruit] = [
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "ぶどう", isChecked: false),
        Fruit(name: "なし", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
    ]
}
