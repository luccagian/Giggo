import SwiftUI

struct ChatView: View {
    @EnvironmentObject var sessaoUser:  UserSection

    var conversas: [Conversa] {
        switch sessaoUsuario.usuarioAtual.tipo {
        case .artista:
            return conversasArtistaMock
            
        case .bar:
            return conversasBarMock
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(conversas) { conversa in
                    NavigationLink {
                        ChatDetailView(conversa: conversa)
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
