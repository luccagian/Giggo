import SwiftUI


//Definir o Background depois
let backgroundDark = Color.blue

struct CalendarView: View {
    @Environment(UserSection.self) var sessaoUser
    @State private var selectedDate = Date.now
    
    
    var user: User {
        sessaoUser.atualUser
    }
    
    var itens: [InfosBasicas] {
        switch user.tipo {
        case .artista:
            return baresMock
            
        case .bar:
            return artistasMock
        }
    }
    
    private var itensData: [InfosBasicas] {
        return itens.filter { info in
            guard let data = info.data else { return false }
            
            return Calendar.current.isDate(data, inSameDayAs: selectedDate)
        }
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                DatePicker(
                    "Calendar",
                    selection: $selectedDate,
                    displayedComponents: .date
                ).datePickerStyle(.graphical)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .background(Color("BlueGiggo"))
            
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(itensData) { infos in
                            NavigationLink {
                                DetailView(info: infos)
                            } label: {
                                CardsView(info: infos, isRecomendado: false)
                            }
                        }
                    }
                }
            }
            .background(Color("BlueGiggo"))
        }
    }
}

#Preview {
    CalendarView()
        

}
