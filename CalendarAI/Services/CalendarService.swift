//
//  CalendarService.swift
//  CalendarAI
//
//  Created by Jai Narula on 11/30/23.
//

import Foundation
import EventKit

class CalendarService: ObservableObject {
    private var store = EKEventStore()
    @Published var events: [EKEvent] = []

    init() {
        checkPermissions()
    }

    func checkPermissions() {
           let status = EKEventStore.authorizationStatus(for: .event)
           switch (status) {
           case .notDetermined:
               store.requestFullAccessToEvents { granted, error in

               }
           case .fullAccess:
               break
           default:
               print("No access! Status: \(status)")
           }
       }
    
    func fetchEvents() {
        let startDate = Date()
        let endDate = Date(timeIntervalSinceNow: 30 * 24 * 3600)
        let calendars = store.calendars(for: .event)
        let predicate = store.predicateForEvents(withStart: startDate, end: endDate, calendars: calendars)
        self.events = store.events(matching: predicate)
    }
}