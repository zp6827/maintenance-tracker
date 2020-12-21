//
//  AddVehicleView.swift
//  MaintenanceTracker
//
//  Created by Zach Pate on 5/27/20.
//  Copyright © 2020 Zach Pate. All rights reserved.
//

import SwiftUI

struct AddVehicleView: View {
	
	@Binding var showAddVehiclePopover: Bool
	@State var name: String = ""
	@State var make: String = ""
	@State var model: String = ""
	@State var year: String = "2010"
	
	var body: some View {
		VStack {
			NavigationView {
				Form {
					// TODO: Figure out why this picker is throwing a constraint error
					Picker(selection: $year, label: Text("Vehicle Year")) {
						ForEach(1900 ..< 2022) {
							Text(String($0))
						}
					}
					TextField("Vehicle Make", text: $make)
					TextField("Vehicle Model", text: $model)
				}
				.navigationBarTitle("Add New Vehicle")
			}
			Spacer()
			Button(action: {
				self.createVehicle()
			}) {
				Text("Add New Vehicle")
				.fontWeight(.semibold)
				.font(.title)
				.frame(minWidth: 0, maxWidth: .infinity)
				.padding()
				.foregroundColor(.white)
				.background(Color.blue)
				.cornerRadius(40)
			}
			// TODO: Create disabled style for button
//			.disabled(make.isEmpty || name.isEmpty || model.isEmpty || year.isEmpty)
		}
	}
	
	
	func createVehicle() {
		let myVehicle = Vehicle(name: name, make: make, model: model, year: year)
		
		print("CREATED VEHICLE \(myVehicle)")
	}
}

struct AddVehicleView_Previews: PreviewProvider {
	static var previews: some View {
		AddVehicleView(showAddVehiclePopover: .constant(true))
	}
}
