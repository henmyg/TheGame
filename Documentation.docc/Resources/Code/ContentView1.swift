import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
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
