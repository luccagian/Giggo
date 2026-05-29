//
//  DetailView.swift
//  Projeto
//
//  Created by Aluno Mack on 25/05/26.
//
import SwiftUI
struct DetailView: View {
    
    var info: InfosBasicas
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 14) {
                ZStack {
                    Rectangle()
                        .frame(width: 70, height: 70)
                        .foregroundStyle(.purple.opacity(0.12))
                        .cornerRadius(16)
                    
                    Image(systemName: info.icone)
                        .font(.system(size: 30))
                        .foregroundColor(.purple)
                        .frame(
                            width:  150,
                            height:  150
                        )
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(info.titulo)
                        .font( .headline )
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
                }//VstackInformacoes
                
                Button(action: {
                    print("Botão clicado")
                }){
                    Text("Reservar")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blueGiggo)
                        .cornerRadius(12)
                }
                .padding()
                
                Spacer()
                
                
            
            }.frame(width: 300, height: 350, alignment: .center)
            .padding(0)
            
            //.shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)
            .background {
                RoundedRectangle(cornerRadius: 18)
                    
                    
//                    .frame(width: isRecomendado ? 300 : 400, height: isRecomendado ? 120 : 96)
                    .foregroundColor(Color("SecGiggo"))
            }
        
        }
        
        .background(Color("BlueGiggo"))// NavigationStack
        
    }//Body
}//Struct

#Preview {
    let previewInfo = InfosBasicas(
        id: 2,
        titulo: "Studio Pub",
        legenda: "Metal",
        localizacao: "Santo André",
        avalia: 4.8,
        icone: "guitars.fill",
        data: .now
    )
    return DetailView(info: previewInfo )
}
    
