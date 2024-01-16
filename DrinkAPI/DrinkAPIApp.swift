//
//  DrinkAPIApp.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//

import SwiftUI

@main
struct DrinkAPIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
