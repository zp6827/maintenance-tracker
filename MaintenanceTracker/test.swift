//
//  test.swift
//  MaintenanceTracker
//
//  Created by Zach Pate on 5/27/20.
//  Copyright © 2020 Zach Pate. All rights reserved.
//

import Foundation

//struct ContentView: View {
//
//    @ObservedObject var viewRouter = ViewRouter()
//    @State var showPopUp = false
//	@State private var selectedTabIndex = 0
//
//	var body: some View {
//		TabView(selection: $selectedTabIndex) {
//			Text("PAGE 1")
//				.onTapGesture {
//					self.selectedTabIndex = 0
//				}
//				.tabItem {
//					Image(systemName: "list.bullet")
//					Text("Records")
//				}.tag(0)
//
//			PlusMenu()
////				.offset(y: -geometry.size.height/6)
//				.tabItem {
//					Image(systemName: "plus")
//					Text("Add Log")
//				}.tag(1)
//
//			Text("Three")
//				.onTapGesture {
//					self.selectedTabIndex = 2
//				}
//				.tabItem {
//					Image(systemName: "car")
//					Text("Vehicles")
//				}.tag(2)
//		}
//	}
//
//}


// FANCY TAB VIEW


//import SwiftUI
//
//struct ContentView: View {
//
//    @ObservedObject var viewRouter = ViewRouter()
//
//    @State var showPopUp = false
//
//    var body: some View {
//        GeometryReader { geometry in
//            VStack {
//                Spacer()
//                if self.viewRouter.currentView == "home" {
//                    Text("Home")
//                } else if self.viewRouter.currentView == "settings" {
//                    Text("Settings")
//                }
//                Spacer()
//                ZStack {
//                    if self.showPopUp {
//                       PlusMenu()
//                        .offset(y: -geometry.size.height/6)
//                    }
//                    HStack {
//						Image(systemName: "car")
//							.resizable()
//							.aspectRatio(contentMode: .fit)
//							.padding(20)
//							.frame(width: geometry.size.width/3, height: 75)
//							.foregroundColor(self.viewRouter.currentView == "home" ? .black : .gray)
//							.onTapGesture {
//								self.viewRouter.currentView = "home"
//							}
//                        ZStack {
//                            Circle()
//                                .foregroundColor(Color.white)
//                                .frame(width: 75, height: 75)
//                            Image(systemName: "plus.circle.fill")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 75, height: 75)
//                                .foregroundColor(.blue)
//                                .rotationEffect(Angle(degrees: self.showPopUp ? 90 : 0))
//                        }
//                            .offset(y: -geometry.size.height/10/2)
//                            .onTapGesture {
//                                withAnimation {
//                                   self.showPopUp.toggle()
//                                }
//                            }
//                        Image(systemName: "list.bullet")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .padding(20)
//                            .frame(width: geometry.size.width/3, height: 75)
//                            .foregroundColor(self.viewRouter.currentView == "settings" ? .black : .gray)
//                            .onTapGesture {
//                                self.viewRouter.currentView = "settings"
//                            }
//                    }
//                        .frame(width: geometry.size.width, height: geometry.size.height/10)
//                    .background(Color.white.shadow(radius: 2))
//                }
//            }.edgesIgnoringSafeArea(.bottom)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct PlusMenu: View {
//    var body: some View {
//        HStack(spacing: 50) {
//            ZStack {
//                Circle()
//                    .foregroundColor(Color.blue)
//                    .frame(width: 70, height: 70)
//                Image(systemName: "car")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding(20)
//                    .frame(width: 70, height: 70)
//                    .foregroundColor(.white)
//            }
//            ZStack {
//                Circle()
//                    .foregroundColor(Color.blue)
//                    .frame(width: 70, height: 70)
//                Image(systemName: "wrench")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding(20)
//                    .frame(width: 70, height: 70)
//                    .foregroundColor(.white)
//            }
//        }
//            .transition(.scale)
//    }
//}
//
