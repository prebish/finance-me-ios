//
//  Finance_MeApp.swift
//  Finance Me
//
//  Created by Joel Prebish on 9/2/24.
//

import SwiftUI

@main
struct Finance_MeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
