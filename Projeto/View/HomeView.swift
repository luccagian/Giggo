import SwiftUI

struct HomeView: View {
    @Environment(UserSection.self) var sessaoUser
    
    var user: User {
        sessaoUser.atualUser
    }
    
    var itensDaHome: [InfosBasicas] {
        switch user.tipo {
        case .artista:
            return baresMock
            
        case .bar:
            return artistasMock
        }
    }
    
    var recomendados: [InfosBasicas] {
        Array(
            itensDaHome
                .sorted { $0.avalia > $1.avalia } 
                .prefix(5)
        )
    }
    
    var cardsNormais: [InfosBasicas] {
        let idsRecomendados = Set(recomendados.map { $0.id })
        
        return Array(
            itensDaHome
                .filter { !idsRecomendados.contains($0.id) }
                .prefix(10)
        )
    }
    
    var body: some View {
        NavigationStack{
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 24) {
                    Text("Olá, \(user.nome)!")
                        .font(.title)
                        .bold()
                    
                    Text("Destaques")
                        .font(.title2)
                        .bold()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(recomendados) { infos in
                                NavigationLink{
                                    DetailView(dados: infos)
                                } label: {
                                    CardsView(info: infos, isRecomendado: true)
                                }
                            }
                        }
                    }
                    
                    Text("Outras oportunidades")
                        .font(.title2)
                        .bold()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 16) {
                            ForEach(cardsNormais) { infos in
                                NavigationLink {
                                    DetailView(dados: infos)
                                } label: {
                                    CardsView(info: infos, isRecomendado: false)
                                }
                            }
                        }
                    }
                }
                .toolbar(content: {
                    Button(action: {}) {
                        Image(systemName: "bell")
                    }
                })
                .padding(.horizontal)
            }
            .background(Color("BlueGiggo"))
            
        }
    }
}

#Preview {
    @State var sessaoUser = UserSection()
    
    return HomeView()
        .environment(sessaoUser)
        .preferredColorScheme(.dark)
}
