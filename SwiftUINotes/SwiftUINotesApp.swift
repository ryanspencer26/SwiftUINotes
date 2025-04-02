//
//  SwiftUINotesApp.swift
//  SwiftUINotes
//
//  Created by RYAN SPENCER on 4/2/25.
//

import SwiftUI

@main
struct SwiftUINotesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
