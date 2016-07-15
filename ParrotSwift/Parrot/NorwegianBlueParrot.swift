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

	public init(voltage: Double, isNailed: Bool) {
		self.voltage = voltage
		self.isNailed = isNailed
	}
	
	override public func getSpeed() -> Double {
		return (isNailed) ? 0 : getBaseSpeed(voltage)
	}
	
	private func getBaseSpeed(voltage: Double) -> Double {
		return min(24.0, voltage*Parrot.baseSpeed)
	}
}
