import Foundation

struct Chat: Identifiable {
    let id = UUID()
    let nome: String
    let tipo: String
    let ultimaMensagem: String
    let horario: String
    let icone: String
}
