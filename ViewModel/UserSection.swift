import Foundation

class UserSection: ObservableObject {
  @Published var atualUser: User = userArtista 

  func trocaArtista() {
    atualUser = userArtista
  }

  func trocaBar(){
    atualUser = userBar
  }
}
