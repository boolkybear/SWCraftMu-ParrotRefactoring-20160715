//
//  EuropeanParrot.swift
//  ParrotSwift
//
//  Created by José Servet Font on 15/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

public class EuropeanParrot: Parrot {
	
	init() {
		super.init(_type: ParrotTypeEnum.EUROPEAN, numberOfCoconuts: 0, voltage: 0, isNailed: false)
	}
	
	public override func getSpeed() -> Double {
		return super.getSpeed()
	}
}