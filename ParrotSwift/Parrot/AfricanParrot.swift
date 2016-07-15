//
//  AfricanParrot.swift
//  ParrotSwift
//
//  Created by José Servet Font on 15/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

public class AfricanParrot: Parrot {
	public init(numberOfCoconuts: Int = 0) {
		super.init(_type: ParrotTypeEnum.AFRICAN, numberOfCoconuts: numberOfCoconuts, voltage: 0, isNailed: false)
	}
	
	override public func getSpeed() -> Double {
		return super.getSpeed()
	}
}
