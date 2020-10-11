//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by mauricio.pasquotto on 11/10/20.
//  Copyright © 2020 Mauricio Pasquotto. All rights reserved.
//

import XCTest

class FoodTrackerUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")
    }

    func testOpenNewMealWindow() {
        app.launch()
        app.navigationBars.buttons.element(boundBy: 1).tap()
        XCTAssertTrue(app.textFields["mealName"].exists)
    }
    
    func testAddNewMeal() {
        // Launch app
        app.launch()
        
        // Get total meals
        let mealCountInitial = app.tables.staticTexts.count
        
        // Tap add meal
        app.navigationBars.buttons.element(boundBy: 1).tap()
        
        // meal name type
        let mealName = app.textFields["mealName"]
        mealName.tap()
        mealName.typeText("Teste 1")
        
        // meal photo select
        let image = app.images["mealPhoto"]
        image.tap()
        app.tables.cells.element(boundBy: 0).tap()
        
        // rating selection
        let mealRating = app.otherElements["mealRating"]
        mealRating.buttons.element(boundBy: 3).tap()
        
        // save
        app.buttons["mealSave"].tap()
        
        // check if it was created
        let mealCountNow = app.tables.staticTexts.count
        XCTAssertTrue(mealCountNow > mealCountInitial)
    }
    
    func testEditLastMea() {
        // Launch App
        app.launch()
        
        // Tap first meal
        app.tables.cells.element(boundBy: 0)
    }
}
