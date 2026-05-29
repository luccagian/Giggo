import Foundation

struct Mensagem : Identifiable { // adicionar tipo ?????
    let id = UUID()
    let texto: String
    let sendByUser: Bool
    let horario: String
}
