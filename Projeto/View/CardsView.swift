import SwiftUI

struct CardsView: View {
    
    let info: InfosBasicas
    let isRecomendado: Bool
    
    var body: some View {
        HStack(spacing: 14) {
            
            Image(systemName: info.icone)
                .font(.system(size: isRecomendado ? 30 : 26))
                .foregroundColor(.purple)
                .frame(
                    width: isRecomendado ? 64 : 56,
                    height: isRecomendado ? 64 : 56
                )
                .background(Color.purple.opacity(0.12))
                .cornerRadius(16)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(info.titulo)
                    .font(isRecomendado ? .headline : .subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                Text(info.legenda)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                
                HStack(spacing: 10) {
                    Label(info.localizacao, systemImage: "mappin")
                        .lineLimit(1)
                    
                    Label(String(format: "%.1f", info.avalia), systemImage: "star.fill")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(width: isRecomendado ? 300 : nil, height: isRecomendado ? 120 : 96)
        .background(Color(.systemBackground))
        .cornerRadius(18)
        .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)
    }
}
