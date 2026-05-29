import SwiftUI

@main
struct ProjetoApp: App {
    @State private var sessaoUser = UserSection()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(sessaoUser)
                .preferredColorScheme(.dark)
        }
    }
}
