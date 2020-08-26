//
//  Converter-Tests.swift
//  TaylorSwiftSOngTests
//
//  Created by Mayuresh Rao on 8/25/20.
//  Copyright © 2020 Mayuresh Rao. All rights reserved.
//

import XCTest
@testable import TaylorSwiftSOng

class Converter_Tests: XCTestCase {
    
    var sut : Converter!

    func test32FahrentheitIsZeroCelcius() {
        let input1 = 32.0
        let output1 = sut.convertToCelsius(fahrenheit: input1)
        XCTAssertEqual(output1,0, accuracy:0.000001)
    }
    
    func test212FahrentheitIs100Celcius() {
        let input2 = 212.0
        let output2 = sut.convertToCelsius(fahrenheit: input2)
        XCTAssertEqual(output2,100, accuracy:0.000001)
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Converter()
        continueAfterFailure = false
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil

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
