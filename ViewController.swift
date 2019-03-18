//
//  ViewController.swift
//  BlogExam
//
//  Created by mang on 14/03/2019.
//  Copyright © 2019 shark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Property
    
    var items = [String]()
    var itemsTitle = [String]()
    
    // MARK: - Constant
    
    private struct Constant {
        static let mainCell = "MainTableViewCell"
        static let protocolView = "FirstViewController"
        static let protocolTitle = "Protocol"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [Constant.protocolView]
        itemsTitle = [Constant.protocolTitle]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constant.mainCell, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        
        cell.label.text = itemsTitle[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = UIStoryboard(name: itemsTitle[indexPath.row], bundle: nil).instantiateViewController(withIdentifier: items[indexPath.row])
        
        if let navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
    }
}

