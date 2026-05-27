import SwiftUI

@main
struct ProjetoApp: App {
    @StateObject private var sessaoUser = UserSection()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(sessaoUser)
        }
    }
}
