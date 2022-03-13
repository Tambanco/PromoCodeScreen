//
//  TestPresenter.swift
//  PromoCodeScreenTests
//
//  Created by tambanco 🥳 on 13.03.2022.
//

import XCTest
@testable import PromoCodeScreen

class MockView: PromoViewProtocol {
    
    var titleTest: String?
    
    func setPromocode(promocode: String) {
        self.titleTest = promocode
    }
    
    func showAlert(result: Result) {
        
    }
    
}

class TestPresenter: XCTestCase {
    
    var view: MockView!
    var model: PromoModel!
    var presenter: PromoPresenter!

    override func setUpWithError() throws {
        view = MockView()
        model = PromoModel(promocode: "code")
        presenter = PromoPresenter(view: view, model: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(model, "model is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.codeVerifier(userPromocode: "code")
        XCTAssertEqual(view.titleTest, "code")
    }
    
    func testModel() {
        XCTAssertEqual(model.promocode, "code")
    }
}
