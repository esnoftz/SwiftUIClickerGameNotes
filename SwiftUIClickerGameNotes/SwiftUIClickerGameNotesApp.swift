//
//  SwiftUIClickerGameNotesApp.swift
//  SwiftUIClickerGameNotes
//
//  Created by EVANGELINE NOFTZ on 4/1/25.
//

import SwiftUI

@main
struct SwiftUIClickerGameNotesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
