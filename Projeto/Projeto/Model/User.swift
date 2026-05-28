import Foundation

enum TipoUsuario {
    case artista
    case bar
}

struct User {
    let id = UUID()
    let nome: String
    let email: String
    let tipo: TipoUsuario
}
