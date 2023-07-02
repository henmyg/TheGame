import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext: ModelContext
    @Query private var items: [Item]

    var body: some View {
        VStack {
            Button(action: {
                modelContext.insert(Item(.now))
            }) {
                Text("Add")
                    .padding()
            }
            .buttonStyle(BorderedButtonStyle())
            
            Text("Last: ")
            
            Text("Count: ")
        }
        .padding()
    }
}
