//
//  IAmRichFactory.swift
//  IamRich_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import Foundation

protocol IAmRichFactory {
    func makeIAmRichViewController(iAmRichCoordinator: IAmRichCoordinator) -> IAmRichViewController
}

class IAmRichFactoryImp: IAmRichFactory {
    func makeIAmRichViewController(iAmRichCoordinator: IAmRichCoordinator) -> IAmRichViewController {
        let iAmRichViewController = IAmRichViewController(factory: self, iAmRichCoordinator: iAmRichCoordinator)
        return iAmRichViewController
    }
}
