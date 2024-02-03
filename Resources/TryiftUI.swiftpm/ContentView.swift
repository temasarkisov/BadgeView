import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .badge {
                Text(100, format: .number)
            }
            .badgeStyle(.fancy)
    }
}
