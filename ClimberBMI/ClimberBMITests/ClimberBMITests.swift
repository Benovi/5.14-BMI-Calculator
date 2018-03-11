//
//  ClimberBMITests.swift
//  ClimberBMITests
//
//  Created by Ben Oveson on 3/5/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import XCTest
@testable import ClimberBMI

class ClimberBMITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testGetBMI() {
        
        //metric test
        //XCTAssert(BMI.getBMI(forWeight: 81, andHeight: 180) == 25)
        //XCTAssert(BMI.getBMI(forWeight: 75, andHeight: 200) == 18.8)
        //XCTAssert(BMI.getBMI(forWeight: 75.50, andHeight: 230) == 14.3)
        
        //imperial test
        XCTAssert(BMI.getBMI(forWeight: 178, andHeight: 70) == 25.5)
        XCTAssert(BMI.getBMI(forWeight: 160, andHeight: 70) == 23.0)
        XCTAssert(BMI.getBMI(forWeight: 155, andHeight: 70) == 22.2)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
