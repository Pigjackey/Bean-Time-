//
//  Bean_Time_App.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI

extension Color {
  static let customBackground = Color("customBackground")
  static let customText = Color("customText")
  static let listColor = Color("listColor")
}

@main
struct Bean_Time_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
