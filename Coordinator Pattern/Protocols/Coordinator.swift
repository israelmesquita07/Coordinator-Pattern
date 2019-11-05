//
//  Coordinator.swift
//  Coordinator Pattern
//
//  Created by Israel on 04/11/19.
//  Copyright © 2019 israel3D. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
