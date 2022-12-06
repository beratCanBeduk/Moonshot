//
//  MoonshotApp.swift
//  Moonshot
//
//  Created by berat can beduk on 5.12.2022.
//

import SwiftUI

@main
struct MoonshotApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            bAstronautView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
