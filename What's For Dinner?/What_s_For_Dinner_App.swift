//
//  What_s_For_Dinner_App.swift
//  What's For Dinner?
//
//  Created by Donovon Spencer on 10/23/20.
//

import SwiftUI

@main
struct What_s_For_Dinner_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
