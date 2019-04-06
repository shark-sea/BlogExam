//
//  SecondViewController.swift
//  BlogExam
//
//  Created by mang on 15/03/2019.
//  Copyright © 2019 shark. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Property
    
    weak var delegate: DeliveryDataProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBAction
    
    @IBAction func preButtonAction(_ sender: Any) {
        delegate?.deliveryData("오늘 하루도 힘내세요!!")
        dismiss(animated: true, completion: nil)
    }
}
