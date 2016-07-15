//
//  NorwegianBlueParrot.swift
//  ParrotSwift
//
//  Created by José Servet Font on 15/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

public class NorwegianBlueParrot : Parrot {
	public init(voltage: Double, isNailed: Bool) {
		super.init(_type: ParrotTypeEnum.NORWEGIAN_BLUE, numberOfCoconuts: 0, voltage: voltage, isNailed: isNailed)
	}
	
	override public func getSpeed() -> Double {
		return super.getSpeed()
	}
}
