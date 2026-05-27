import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var sessaoUser: UserSection
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    
                    profileHeader
                    
                    profileInfoCard
                    
                    switchUserSection
                    
                    Spacer()
                }
                .padding()
            }
            .background(Color("BlueGiggo"))
            .navigationTitle("Perfil")
        }
    }
}

private var profileHeader: some View {}

private var profileInfoCard: some View {}

private var switchUserSection: some View {                                  
    VStack(alignment: .leading, spacing: 14) {   
        Text("Trocar tipo de perfil")
            .font(.headline)
            
        VStack(spacing: 12) {
                Button {
                sessaoUsuario.trocarArtista()
            } label: {
                      HStack {
                        Image(systemName: "guitars.fill")
                        Text("Usar como Artista")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        if sessaoUsuario.atualUser.tipo == .artista {
                            Image(systemName: "checkmark.circle.fill")
                        }
                    }
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                }
                
                Button {
                    sessaoUsuario.trocarBar()
                } label: {
                    HStack {
                        Image(systemName: "music.note.house.fill")
                        Text("Usar como Bar")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        if sessaoUsuario.atualUser.tipo == .bar {
                            Image(systemName: "checkmark.circle.fill")
                        }
                    }
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                }
        }
    }
}
