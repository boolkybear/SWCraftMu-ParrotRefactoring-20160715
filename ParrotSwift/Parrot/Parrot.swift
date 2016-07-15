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

	public init(_type: ParrotTypeEnum, numberOfCoconuts: Int = 0, voltage: Double, isNailed: Bool) {
		self.type = _type
	}
	
	public func getSpeed() -> Double {
		fatalError("Should be unreachable")
	}
	
	internal func getBaseSpeed() -> Double {
		return 12.0
	}
}
