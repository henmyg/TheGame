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
            
            Text("Last: \(last)")
            
            Text("Count: \(count)")
        }
        .padding()
    }
    
    private var last: String {
        guard let lastDate = items
            .map({ $0.date })
            .max()
        else { return "-" }
            
        return lastDate.formatted(date: .numeric, time: .shortened)
    }
    
    private var count: String {
        let count = items.count
        return "\(count)"
    }
}
