//
//  Vehicle.swift
//  MaintenanceTracker
//
//  Created by Zach Pate on 5/26/20.
//  Copyright © 2020 Zach Pate. All rights reserved.
//

import Foundation

class Vehicle {
	var name: String
	var make: String
	var model: String
	var year: Int
	
	init(name: String, make: String, model: String, year: Int) {
		self.name = name
		self.make = make
		self.model = model
		self.year = year
	}
		
}
