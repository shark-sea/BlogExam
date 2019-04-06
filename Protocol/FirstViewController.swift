//
//  FirstViewController.swift
//  BlogExam
//
//  Created by mang on 15/03/2019.
//  Copyright © 2019 shark. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, DeliveryDataProtocol {

    // MARK: - IBOutlet
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.isHidden = true
    }
    
    // MARK: - IBAction
    
    @IBAction func nextButtonAction(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        vc.delegate = self // 대리자 설정
        self.present(vc, animated: true, completion: nil)
    }
    
    // MARK: - Protocol
    
    func deliveryData(_ data: String) {
        dataLabel.isHidden = false
        dataLabel.text = data
    }
}

protocol DeliveryDataProtocol: class {
    func deliveryData(_ data: String)
}
