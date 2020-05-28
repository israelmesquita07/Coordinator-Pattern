//
//  BuyViewController.swift
//  Coordinator Pattern
//
//  Created by Israel on 05/11/19.
//  Copyright © 2019 israel3D. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    
    weak var coordinator: BuyCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }
}
