import SwiftUI


//Definir o Background depois
let backgroundDark = Color.blue

/*LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)*/



/**
 
 
 ------------   CALENDARIO     ----------------
 
 **/

struct CalendarView: View {
    @State private var selectedDate = Date.now
    @State private var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path){
            
            VStack(alignment: .center){
                DatePicker(
                    "Calendar",
                    selection: $selectedDate,
                    displayedComponents: .date
                ).datePickerStyle(.graphical)
                
            }.frame(maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top)//Stack da DatePicker
            
            .navigationDestination(for: Date.self ){
                date in VStack{
                    Text(date.description)
                } //Destino da navegacao do calendario
            }//NavigationDestination
            
            HStack(spacing: 40) {
            }
            
            //Vai ter um filtro aqui talvez... se der tempo
            ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(0..<20) {
                            Text("Row \($0)")
                        }
                    }
                }
            
            
        } //NavigationStack
        .onChange(of: selectedDate) { _, newValue in
                    path.append(newValue)}//onChange
            
        
        
        
        
    }//Body
    
}//View

#Preview {
    CalendarView()
}
