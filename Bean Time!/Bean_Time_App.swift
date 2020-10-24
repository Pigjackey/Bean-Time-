//
//  Bean_Time_App.swift
//  Bean Time!
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI

@main
struct Bean_Time_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
