import Foundation

@Observable
class UserSection {
    var atualUser: User = userArtista
    
    func trocaArtista() {
        atualUser = userArtista
    }
    
    func trocaBar(){
        atualUser = userBar
    }
}
