import SwiftUI

struct ChatView: View {
    @EnvironmentObject var sessaoUser:  UserSection

    var conversas: [Chat] {
        switch sessaoUsuario.atualUser.tipo {
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
                        ChatDetailView(conversas: conversas)
                    } label: {
                        ChatRowView(conversa: conversa)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Conversas")
        }
    }
}

#Preview {
    ChatView()
}
