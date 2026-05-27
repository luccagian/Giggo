import Foundation

struct Conversa: Identifiable {
    let id = UUID()
    let nome: String
    let tipo: String
    let ultimaMensagem: String
    let horario: String
    let icone: String
    let mensagens: [Mensagem]
}
