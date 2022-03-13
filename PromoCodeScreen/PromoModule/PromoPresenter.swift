//
//  PromoPresenter.swift
//  PromoCodeScreen
//
//  Created tambanco 🥳 on 13.03.2022.
//
//  Template generated by Tambanco
//

import Foundation

// MARK: Output protocol
protocol PromoViewProtocol: AnyObject {

}

// MARK: Input protocol
protocol PromoPresenterProtocol: AnyObject {
    init(view: PromoViewProtocol, model:  PromoModel)

}

class PromoPresenter: PromoPresenterProtocol {

    weak var view: PromoViewProtocol?
    var model: PromoModel
    
    // Enter buisness logic here
    
    required init(view: PromoViewProtocol, model: PromoModel) {
        self.view = view
        self.model = model
    }
}
