// Henrik Top Mygind, 29/06/2023

import SwiftUI
import SwiftData

@main
struct TheGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [Loss.self])
        }
    }
}
