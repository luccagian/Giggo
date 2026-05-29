import Foundation

struct InfosBasicas: Identifiable { // adicionar data + valor
    
    let id: Int
    let titulo: String
    let legenda: String
    let localizacao: String
    let avalia: Double
    let icone: String
    var data: Date?
    var valor: Double
}

extension InfosBasicas {
    static     let previewInfo = InfosBasicas(
        id: 2,
        titulo: "Studio Pub",
        legenda: "Metal",
        localizacao: "Santo André",
        avalia: 4.8,
        icone: "guitars.fill",
        data: Calendar.current.date(from: DateComponents(year: 2026, month: 6, day: 15)),
        valor: 150.00
    )
}
