//
//  ViewController.swift
//  Coordinator Pattern
//
//  Created by Israel on 04/11/19.
//  Copyright © 2019 israel3D. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buyTapped(_ sender: UIButton) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
}

