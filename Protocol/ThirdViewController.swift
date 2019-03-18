//
//  ThirdViewController.swift
//  BlogExam
//
//  Created by mang on 15/03/2019.
//  Copyright © 2019 shark. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    weak var delegate: DismissViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dismissButtonAction(_ sender: Any) {
        print(self.presentingViewController)
//        self.presentingViewController?.dismiss(animated: true, completion: nil)
        delegate?.dismissAction()
        self.dismiss(animated: true, completion: nil)
    }
}
