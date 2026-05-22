import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack{
            Color("Bg")
                .ignoresSafeArea()
            
        TabView(selection: $selectedTab) {
            NavigationStack {
                ScrollView {
                    VStack {
                            
                        }
                    }
                    .navigationTitle("Home") // Título fixo ou grande
                    
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            NavigationStack {
            }
            .navigationTitle("Buscar")
            
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass")
                }
                .tag(1)
            }
        }
    }
}

#Preview {
    ContentView()
}
