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
                HStack{
                    VStack(alignment: .leading, spacing: 6) {
                        Text(info.titulo)
                            .font(isRecomendado ? .headline : .subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                        
                        Text(info.legenda)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                        
                        
                        HStack(spacing: 10) {
                            Label(String(format: "%.1f", info.avalia), systemImage: "star.fill")
                                
                            
                            Label(info.localizacao, systemImage: "mappin")
                                .lineLimit(1)
                            
                        }
                        .font(.caption)
                        .foregroundStyle(Color("OrangeGiggo"))
                        
                        
                        Text("R$ " + String(info.valor))
                            .font(isRecomendado ? .headline : .subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.green)
                    }
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(Color("OrangeGiggo"))
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 18)
                    .foregroundColor(Color("SecGiggo"))
            }
        }
}

#Preview {
    let previewInfo = InfosBasicas(
        id: 2,
        titulo: "Studio Pub",
        legenda: "Metal",
        localizacao: "Santo André",
        avalia: 4.8,
        icone: "guitars.fill",
        data: .now,
        valor: 400.00
    )
    return CardsView(info: previewInfo, isRecomendado: false)
        
}
