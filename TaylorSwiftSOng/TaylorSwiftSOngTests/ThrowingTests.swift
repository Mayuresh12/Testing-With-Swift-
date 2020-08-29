//
//  ThrowingTests.swift
//  TaylorSwiftSOngTests
//
//  Created by Mayuresh Rao on 8/27/20.
//  Copyright © 2020 Mayuresh Rao. All rights reserved.


import XCTest

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControlsDisallowed
}
struct Game {
    let name: String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlsDisallowed
        } else {
            print("\(name) is OK to Play!")
        }
        
    }
}
class ThrowingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
    func testPlayingBioBlitzThrows(){
        let game =  Game(name: "BioBlitz")
        
        do {
            try game.play()
            XCTFail("BioBlitz has been not been purchased")
        } catch  {
            
        }
    }
    
    func testPlayingBlastazapThrows(){
        let game = Game(name: "Blastazap")
        XCTAssertThrowsError(try game.play()) {
            error in
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    func playingExplodingMonkeyDoesntThrow() {
        let game = Game(name: "Exploding Monkings")
        
        XCTAssertNoThrow( try game.play())
    }
    
    func testDeadStormRisingThrows() throws {
        let game = Game(name: "Dead Storm Rising")
        try game.play()
    }
}

extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}
