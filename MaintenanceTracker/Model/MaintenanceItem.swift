//
//  MaintenanceItem.swift
//  MaintenanceTracker
//
//  Created by Zach Pate on 5/26/20.
//  Copyright © 2020 Zach Pate. All rights reserved.
//

import Foundation

class MaintenanceItem {
	var vehicle: Vehicle
	var description: String
	var notes: String
	var mileage: Int
	
	init(vehicle: Vehicle, description: String, notes: String, mileage: Int) {
		self.vehicle = vehicle
		self.description = description
		self.notes = notes
		self.mileage = mileage
	}
}
