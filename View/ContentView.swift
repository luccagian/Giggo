import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CalendarView()
                .tabItem {
                    Label("Calendario", systemImage: "calendar")
                }
            
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message.circle")
                }
            
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle")
                }
        }
    }
}


#Preview {
    ContentView()
}
