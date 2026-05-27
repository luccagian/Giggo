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
    
    var tituloRecomendados: String {
        user.tipo == .artista ? "Casas em destaque" : "Artistas em destaque"
    }
    
    var tituloNormais: String {
        user.tipo == .artista ? "Outras casas disponíveis" : "Outros artistas disponíveis"
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
                
                HStack(){
                    
                }
                
                VStack{
                    
                }
                
                VStack{
                    
                }
                
                
                Rectangle()
                    .frame(width: 100, height: 5600)
            }
            .navigationTitle("Olá, xxx!")
            .toolbar(content: {
                Button(action: {}) {
                    Image(systemName: "bell")
                }
            })
        }
        
//        .searchable(text: $searchText, prompt: "Pesquisar...")
//            Button(action: {}) {
//                Image(systemName: "line.3.horizontal.decrease.circle")
//            
//        }
    }
}


#Preview {
    @State var sessaoUser = UserSection()
    
    return HomeView()
        .environment(sessaoUser)
}
