//
//  CreateAccountCoordinator.swift
//  Coordinator Pattern
//
//  Created by Israel on 28/05/20.
//  Copyright © 2020 israel3D. All rights reserved.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator  = self
        navigationController.pushViewController(vc, animated: true)
    }
}
