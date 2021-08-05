//
//  ViewController.swift
//  oonishiReonKadai13
//
//  Created by 大西玲音 on 2021/07/22.
//

import UIKit

struct TableViewConstant {
    static let height: CGFloat = 60
}

// ViewControllerでしか使っていないため、private extensionで分離
private extension Fruit {
    static let testData: [Fruit] = [
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "ぶどう", isChecked: false),
        Fruit(name: "なし", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
    ]
}

final class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let fruits = Fruit.testData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FruitTableViewCell.nib,
                           forCellReuseIdentifier: FruitTableViewCell.identifier)
        tableView.tableFooterView = UIView()
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TableViewConstant.height
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: FruitTableViewCell.identifier
        ) as! FruitTableViewCell
        let fruit = fruits[indexPath.row]
        cell.configure(fruit: fruit)
        return cell
    }
    
}
