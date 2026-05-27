import SwiftUI

struct ChatDetailView: View {

  struct MessageBubbleView: View {
    
    let mensagem: Mensagem
    
    var body: some View {
        HStack {
            if mensagem.sendByUser {
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(mensagem.texto)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text(mensagem.horario)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding(12)
            .background(
                mensagem.sendByUser
                ? Color.purple.opacity(0.18)
                : Color(.systemBackground)
            )
            .cornerRadius(16)
            .frame(
                maxWidth: 280,
                alignment: mensagem.sendByUser ? .trailing : .leading
            )
            
            if !mensagem.sendByUser {
                Spacer()
            }
        }
    }
}
    
    let conversa: Chat
    
    var body: some View {
        VStack(spacing: 0) {
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(conversa.mensagens) { mensagem in
                        MessageBubbleView(mensagem: mensagem)
                    }
                }
                .padding()
            }
            
            fakeInputBar
        }
        .navigationTitle(conversa.nome)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
    }
    
    private var fakeInputBar: some View {
        HStack(spacing: 12) {
            Text("Mensagem")
                .foregroundColor(.secondary)
                .padding(.horizontal)
                .frame(height: 44)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemBackground))
                .cornerRadius(22)
            
            Image(systemName: "paperplane.fill")
                .foregroundColor(.purple)
                .font(.title3)
        }
        .padding()
        .background(Color(.systemGroupedBackground))
    }
}
