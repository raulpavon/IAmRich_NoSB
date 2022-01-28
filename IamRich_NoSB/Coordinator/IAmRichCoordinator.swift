//
//  IAmRichCoordinator.swift
//  IamRich_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import Foundation
import UIKit

class IAmRichCoordinator {
    var navigationController: UINavigationController
    private let factory =  IAmRichFactoryImp()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let iAmRichViewController = factory.makeIAmRichViewController(iAmRichCoordinator: self)
        navigationController.setViewControllers([iAmRichViewController], animated: false)
    }
}
