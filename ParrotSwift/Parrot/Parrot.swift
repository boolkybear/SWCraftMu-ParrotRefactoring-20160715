//
//  Parrot.swift
//  ParrotSwift
//
//  Created by José Servet Font on 14/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

enum Exception: ErrorType {
	case Runtime(error: String)
}

public class Parrot {
	
	private let type: ParrotTypeEnum
	
	private let voltage: Double
	private let isNailed: Bool
	
	
	public init(_type: ParrotTypeEnum, numberOfCoconuts: Int = 0, voltage: Double, isNailed: Bool) {
		self.type = _type
		self.voltage = voltage
		self.isNailed = isNailed
	}
	
	public func getSpeed() -> Double {
		switch(type) {

		case .NORWEGIAN_BLUE:
			return (isNailed) ? 0 : getBaseSpeed(voltage)
			
		default:
			fatalError("Should be unreachable")
		}
	
		//throw Exception.Runtime(error: "Should be unreachable")
	}
	
	private func getBaseSpeed(voltage: Double) -> Double {
		return min(24.0, voltage*getBaseSpeed())
	}
	
	internal func getBaseSpeed() -> Double {
		return 12.0
	}
	
	
}
