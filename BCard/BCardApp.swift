//
//  BCardApp.swift
//  BCard
//
//  Created by Kostadin Samardzhiev on 30.12.21.
//

import SwiftUI

@main
struct BCardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
