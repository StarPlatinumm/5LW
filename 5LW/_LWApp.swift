//
//  _LWApp.swift
//  5LW
//
//  Created by Артем Кривдин on 25.03.2024.
//

import SwiftUI
import SwiftData

@main
struct _LWApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    @StateObject private var vM = GameViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vM)
        }
        .modelContainer(sharedModelContainer)
    }
}
