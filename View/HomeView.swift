import SwiftUI

let username = "Usuario"
let localizacao = "Sao Paulo, SP"
//depois vai ser consumido da API

struct HomeView: View {
    /*@EnvironmentObject var sessaoUser:  UserSection
     
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
     usuario.tipo == .artista ? "Outras casas disponíveis" : "Outros artistas disponíveis"
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
     }*/
    var body: some View {
        
        /*ScrollView {
         VStack(alignment: .leading, spacing: 28) {
         headerSection
         recomendadosSection
         cardsNormaisSection
         }
         .padding(.vertical)
         }*/
        //.background(Color(.systemGroupedBackground))
        //}//ScrollView
        
        VStack(alignment: .leading) {
            Text("Bem-vindo \(username)")
                .font(.headline)

            Text("\(localizacao)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        
        
        
        
