//
//  AINotificationsView.swift
//  CalendarAI
//
//  Created by Shubham Chawla on 12/16/23.
//

import SwiftUI

struct AINotificationsView: View {
    var body: some View {
        HStack {
            Image(systemName: "wand.and.stars")
            Text("AI Notifications")
        }
        .font(.subheadline)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<3) { _ in
                    AINotificationView()
                        .frame(width: 300)
                }
            }
        }
        .padding(EdgeInsets(
            top: 8, leading: 0, bottom: 8, trailing: 0
        ))
    }
}

#Preview {
    AINotificationsView()
}
