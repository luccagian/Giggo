import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sessaoUser:  UserSection

    var user: User {
        sessaoUser.atualUser
    }
    
    var body: some View {
        NavigationStack{
            ScrollView {
                Rectangle()
                    .frame(width: 100, height: 5600)
            }
            .navigationTitle("Olá, \(usuario.nome)!")
            .toolbar(content: {
                Button(action: {
                    
                }) {
                    Image(systemName: "bell")
                }
            })
            
            
        }
    }
}

#Preview {
    HomeView()
}
