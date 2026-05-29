import SwiftUI

struct ChatView: View {
    @Environment(UserSection.self) var sessaoUser

    var conversas: [Conversa] {
        switch sessaoUser.atualUser.tipo {
        case .artista:
            return VenueChatMock
            
        case .bar:
            return ArtistChatMock
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(conversas) { conversas in
                    NavigationLink {
                        ChatDetailView(conversa: conversas)
                    } label: {
                        ChatRowView(conversa : conversas)
                    }
                }
            }
//            .listStyle()
            .navigationTitle("Conversas")
            .background(Color("BlueGiggo"))
        }
    }
}

#Preview {
    @State var sessaoUser = UserSection()
    
    return ChatView()
        .environment(sessaoUser)
}
