import SwiftUI

struct ChatRowView: View {
    
    let conversa: Conversa
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(systemName: conversa.icone)
                .font(.title2)
                .foregroundColor(.purple)
                .frame(width: 52, height: 52)
                .background(Color.purple.opacity(0.12))
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                
                HStack {
                    Text(conversa.nome)
                        .font(.headline)
                        .foregroundColor(.white)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Text(conversa.horario)
                        .font(.caption)
                        .foregroundColor(Color("OrangeGiggo"))
                }
                
                Text(conversa.tipo)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                
                Text(conversa.ultimaMensagem)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .lineLimit(1)
            }
        }
        .padding(.vertical, 8)
    }

}

