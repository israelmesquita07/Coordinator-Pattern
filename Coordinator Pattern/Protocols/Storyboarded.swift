//
//  Storyboarded.swift
//  Coordinator Pattern
//
//  Created by Israel on 04/11/19.
//  Copyright © 2019 israel3D. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        
        // isso abre "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)

        // isso é dividido pelo ponto e usa tudo depois, fornecendo "(x)ViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // carrega o storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // instancia uma view controller com esse identificador e força a conversão para o tipo solicitado
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
