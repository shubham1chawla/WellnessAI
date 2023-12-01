//
//  CalendarAIApp.swift
//  CalendarAI
//
//  Created by Shubham Chawla on 11/22/23.
//

import SwiftUI

@main
struct CalendarAIApp: App {
    private let locationService = LocationService()
    private let dataService = DataService()
    private let calendarService = CalendarService()
    private let generativeAIService = GenerativeAIService()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, self.dataService.container.viewContext)
                .environmentObject(self.locationService)
                .environmentObject(self.dataService)
                .environmentObject(self.calendarService)
                .environmentObject(self.generativeAIService)
                .onAppear {
                    self.locationService.requestLocationAccess()
                }
        }
    }
}
