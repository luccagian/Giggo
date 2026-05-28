import SwiftUI

struct NotificationView: View {
    // Permite fechar a janela programaticamente
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Esta é a Janela Vertical")
                .font(.title2)
                .bold()
            
            Text("Conteúdo em arquivo separado.")
                .foregroundColor(.secondary)
            
            Spacer()
            
            Button("Fechar") {
                dismiss() // Fecha a janela atual
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
