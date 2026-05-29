//import SwiftUI
//
//
//struct CardsView: View {
//    
//    let info: InfosBasicas
//    let isRecomendado: Bool
//    
//    var body: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 30)
//                .frame(width: isRecomendado ? 300 : 400, height: isRecomendado ? 120 : 96)
//                .foregroundColor(Color("SecGiggo"))
//            
//            HStack(spacing: 14) {
//                
//                Image(systemName: info.icone)
//                    .font(.system(size: isRecomendado ? 30 : 26))
//                    .foregroundColor(.purple)
//                    .frame(
//                        width: isRecomendado ? 64 : 56,
//                        height: isRecomendado ? 64 : 56
//                    )
//                    .background(Color.purple.opacity(0.12))
//                    .cornerRadius(16)
//                
//                VStack(alignment: .leading, spacing: 6) {
//                    Text(info.titulo)
//                        .font(isRecomendado ? .headline : .subheadline)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.orange)
//                        .lineLimit(1)
//                    
//                    Text(info.legenda)
//                        .font(.subheadline)
//                        .foregroundColor(.red)
//                        .lineLimit(1)
//                    
//                    HStack(spacing: 10) {
//                        Label(info.localizacao, systemImage: "mappin")
//                            .lineLimit(1)
//                        
//                        Label(String(format: "%.1f", info.avalia), systemImage: "star.fill")
//                    }
//                    .font(.caption)
//                    .foregroundColor(.green)
//                }
//                
//                Spacer()
//                
//                Image(systemName: "chevron.right")
//                    .font(.caption)
//                    .foregroundColor(.yellow)
//            }
//            .padding()
//            
//            //.shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)
//        }
//        .frame(width: isRecomendado ? 300 : 400, height: isRecomendado ? 120 : 96)
////        .padding(.horizontal)
//
//    }
//}
//
//#Preview {
//    let previewInfo = InfosBasicas(
//        id: 2,
//        titulo: "Studio Pub",
//        legenda: "Metal",
//        localizacao: "Santo André",
//        avalia: 4.8,
//        icone: "guitars.fill",
//        data: .now
//    )
//    return CardsView(info: previewInfo, isRecomendado: false)
//}

import SwiftUI


struct CardsView: View {
    
    let info: InfosBasicas //mudar data + valor
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
                        .foregroundColor(.orange)
                        .lineLimit(1)
                    
                    Text(info.legenda)
                        .font(.subheadline)
                        .foregroundColor(.red)
                        .lineLimit(1)
                    
                    HStack(spacing: 10) {
                        Label(info.localizacao, systemImage: "mappin")
                            .lineLimit(1)
                        
                        Label(String(format: "%.1f", info.avalia), systemImage: "star.fill")
                    }
                    .font(.caption)
                    .foregroundColor(.green)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.yellow)
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 18)
//                    .frame(width: isRecomendado ? 300 : 400, height: isRecomendado ? 120 : 96)
                    .foregroundColor(Color("SecGiggo"))
            }
        }
//        .frame(width: isRecomendado ? 300 : 400, height: isRecomendado ? 120 : 96)
//        .padding(.horizontal)


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
