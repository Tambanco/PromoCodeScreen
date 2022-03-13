//
//  ModuleBuilder.swift
//  PromoCodeScreen
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import Foundation
import UIKit

protocol Builder: AnyObject {
   static func createPromoModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createPromoModule() -> UIViewController {
        let view = PromoViewController()
        let model = PromoModel(promocode: "code")
        let presenter = PromoPresenter(view: view, model: model)
        view.presenter = presenter
        return view
    }
}
