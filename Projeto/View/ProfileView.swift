import SwiftUI

struct ProfileView: View {
    @Environment(UserSection.self) var sessaoUser
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    
                    switchUserSection
                    
                    Spacer()
                }
                .padding()
            }
            .background(Color("BlueGiggo"))
            .navigationTitle("Perfil")
            
        }
    }
    
    private var switchUserSection: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Trocar tipo de perfil")
                .font(.headline)
                
            VStack(spacing: 12) {
                    Button {
                        sessaoUser.trocaArtista()
                } label: {
                          HStack {
                            Image(systemName: "guitars.fill")
                            Text("Usar como Artista")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            if sessaoUser.atualUser.tipo == .artista {
                                Image(systemName: "checkmark.circle.fill")
                            }
                        }
                        .padding()
                        .background(Color("PurpleGiggo"))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                    }
                    
                    Button {
                        sessaoUser.trocaBar()
                    } label: {
                        HStack {
                            Image(systemName: "music.note.house.fill")
                            Text("Usar como Bar")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            if sessaoUser.atualUser.tipo == .bar {
                                Image(systemName: "checkmark.circle.fill")
                            }
                        }
                        .padding()
                        .background(Color("OrangeGiggo"))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                    }
            }
        }
    }

}

#Preview {
    @State var sessaoUser = UserSection()
    
    return ProfileView()
        .environment(sessaoUser)
}
