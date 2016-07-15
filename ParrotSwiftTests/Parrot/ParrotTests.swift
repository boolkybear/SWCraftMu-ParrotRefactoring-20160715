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
	
	func testSpeedOfEuropeanParrotIsBaseSpeed() {
		let parrot = EuropeanParrot()
		XCTAssert(parrot.speed() == Parrot.baseSpeed)
	}

	func testSpeedOfAfricanParrotWithOneCoconutIsSlow() {
		let parrot = AfricanParrot(numberOfCoconuts: 1)
		XCTAssert(parrot.speed() == 3.0)
	}
	
	func testAfricanParrotWithTwoCoconutsCantFly() {
		let parrot = AfricanParrot(numberOfCoconuts: 2)
		XCTAssert(parrot.speed() == Parrot.stoppedSpeed)
	}
	
	func testSpeedOfAfricanParrotWithNoCoconutsIsBaseSpeed() {
		let parrot = AfricanParrot()
		XCTAssert(parrot.speed() == Parrot.baseSpeed)
	}
	
	func testNorwegianBlueParrotWhenNailedCantFly() {
		let parrot = NorwegianBlueParrot(voltage: 0, isNailed: true)
		XCTAssert(parrot.speed() == Parrot.stoppedSpeed)
	}
	
	func testSpeedNorwegianBlueParrotNotNailedIsFasterWithGreaterThanOneVoltage() {
		let parrot = NorwegianBlueParrot(voltage: 1.5, isNailed: false)
		XCTAssert(parrot.speed() == 18.0)
	}
	
	func testSpeedNorwegianBlueParrotNotNailedIsProportionalToVoltage() {
		let parrot = NorwegianBlueParrot(voltage: 4, isNailed: false);
		XCTAssert(parrot.speed() == 24.0)
	}
	
}
