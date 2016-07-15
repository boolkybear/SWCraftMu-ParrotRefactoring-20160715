//
//  ParrotTests.swift
//  ParrotSwift
//
//  Created by José Servet Font on 14/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import XCTest
@testable import ParrotSwift

class ParrotTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
	func testGetSpeedOfEuropeanParrot() {
		let parrot = EuropeanParrot()
		XCTAssert(parrot.getSpeed() == 12.0)
	}

	func testGetSpeedOfAfricanParrot_With_One_Coconut() {
		let parrot = AfricanParrot(numberOfCoconuts: 1)
		XCTAssert(parrot.getSpeed() == 3.0)
	}
	
	func testGetSpeedOfAfricanParrot_With_Two_Coconuts() {
		let parrot = AfricanParrot(numberOfCoconuts: 2)
		XCTAssert(parrot.getSpeed() == 0.0)
	}
	
	func testGetSpeedOfAfricanParrot_With_No_Coconuts() {
		let parrot = AfricanParrot()
		XCTAssert(parrot.getSpeed() == 12.0)
	}
	
	func testGetSpeedNorwegianBlueParrot_nailed() {
		let parrot = NorwegianBlueParrot(voltage: 0, isNailed: true)
		XCTAssert(parrot.getSpeed() == 0.0)
	}
	
	func testGetSpeedNorwegianBlueParrot_not_nailed() {
		let parrot = NorwegianBlueParrot(voltage: 1.5, isNailed: false)
		XCTAssert(parrot.getSpeed() == 18.0)
	}
	
	func testGetSpeedNorwegianBlueParrot_not_nailed_high_voltage() {
		let parrot = NorwegianBlueParrot(voltage: 4, isNailed: false);
		XCTAssert(parrot.getSpeed() == 24.0)
	}
	
}
