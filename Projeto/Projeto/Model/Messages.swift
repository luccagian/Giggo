import Foundation

struct Mensagem : Identifiable{
    let id = UUID()
    let texto: String
    let sendByUser: Bool
    let horario: String
}
