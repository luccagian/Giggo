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
                }
                
                Button(action: {
                    print("Botão clicado")
                }){
                    Text("Reservar")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("OrangeGiggo"))
                        .cornerRadius(12)
                }
                .padding()
                Spacer()
                
            }.frame(width: 300, height: 350, alignment: .center)
            .padding(0)
            .background {
                RoundedRectangle(cornerRadius: 18)
                    .foregroundColor(Color("SecGiggo"))
            }
        
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .backgroundStyle(Color("BlueGiggo"))

    }
    
}



