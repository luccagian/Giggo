import Foundation

struct InfosBasicas: Identifiable {
    
    let id: Int
    let titulo: String
    let legenda: String
    let localizacao: String
    let avalia: Double
    let icone: String
    var data: Date?
}

extension InfosBasicas {
    static     let previewInfo = InfosBasicas(
        id: 2,
        titulo: "Studio Pub",
        legenda: "Metal",
        localizacao: "Santo André",
        avalia: 4.8,
        icone: "guitars.fill",
        data: .now
    )
}
