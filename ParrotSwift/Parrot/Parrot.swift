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
	
	static let baseSpeed = 12.0
	
	public func getSpeed() -> Double {
		fatalError("Should be unreachable")
	}
}
