//
//  NorwegianBlueParrot.swift
//  ParrotSwift
//
//  Created by José Servet Font on 15/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

public class NorwegianBlueParrot : Parrot {
	private let voltage: Double
	private let isNailed: Bool
	
	static let maxSpeed = 24.0

	public init(voltage: Double, isNailed: Bool) {
		self.voltage = voltage
		self.isNailed = isNailed
	}
	
	override public func speed() -> Double {
		return isNailed ? Parrot.stoppedSpeed : voltageSpeed()
	}
	
	private func voltageSpeed() -> Double {
		return min(NorwegianBlueParrot.maxSpeed, voltage*Parrot.baseSpeed)
	}
}
