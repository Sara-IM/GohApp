
import SwiftUI

struct invitationsPage: View {
    @State var userLocation : String = "Alghaliyah"
    @State var phoneNumber : Int = 0
    @State var index = 0
    @State private var isAccepted = Bool()
     @State private var showResponse = Bool()
    var body: some View {
    //  NavigationStack {
            VStack(alignment: .leading, spacing: 24){
                Spacer()
                Text("Your Invitations").bold().font(.largeTitle)
                    .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
                
                Divider()
                    .padding(.bottom,40)
                //--------------------------------------------------
                //----------------------------------------------------
          
                //You have received an invitation to a trip from
                Label("You have received invite to a trip from :", systemImage: " ")
                HStack{//Hstack 2
                TextField("", text: $userLocation)
                    .padding()
                    .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
                //----------------------------------------------------
                HStack {// Hstack 3
                    Button(action: {
                        isAccepted = true
                        showResponse = true
                    }) {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color("Green"))
                    }// .background(Color("Green")
                    
                    Button(action: {
                        isAccepted = false
                        showResponse = false
                    }) {
                        Image(systemName: "xmark.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color("Green"))
                    }
                }// end Hstack3
                .background(
                    NavigationLink(" ", destination: interestUIReciever() , isActive : $isAccepted))
                }//ens Hstack 2
                
            
                
                
                
                
                //----------------------------------------------------
                
                //  .padding(.top, 200)
                
            }.padding()
            .padding(.bottom, 300)

       
   }
}

#Preview {
    invitationsPage()
}


