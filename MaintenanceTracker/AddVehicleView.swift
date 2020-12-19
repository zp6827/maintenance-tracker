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
	@State var make: String = ""
	@State var model: String = ""
	@State var year: String = "2010"
	
	var body: some View {
		NavigationView {
            Form {
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
	}
}

struct AddVehicleView_Previews: PreviewProvider {
	static var previews: some View {
		AddVehicleView(showAddVehiclePopover: .constant(true))
	}
}
