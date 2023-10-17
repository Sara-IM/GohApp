
import SwiftUI

struct createPage: View {

    @State var userLocation : String = " "
    @State var phoneNumber : Int = 0
    @State var index = 0
    @State private var isAccepted = Bool()
    var body: some View {
       // NavigationView {
            VStack(alignment: .leading, spacing: 24){
      
                Text("Create your journey").bold().font(.largeTitle)
                    .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
                
                Divider()
                    .padding(.bottom,40)
                //--------------------------------------------------
                //----------------------------------------------------
           
                Label("Your Location", systemImage: " ")
                TextField(" ", text: $userLocation)
                    .padding()
                    .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
                
                Label("Phone number", systemImage: " ")
                HStack{
                    TextField(" ", text: $userLocation)
                        .padding()
                        .background(Color("textFieldG")).cornerRadius(10)
                    Image(systemName:"plus.circle").font(.system(size: 40)).foregroundColor((Color("Green")))
                }
                
                HStack {// hstack2
                    Spacer()
                    Button("Send", action: {})
                        .frame(width: 157, height: 48)
                    //.padding(20)
                        .buttonStyle(.bordered)
                        .background(Color("Green"))
                        .foregroundColor(.white)
                        .cornerRadius(21)
                        .bold()
                    Spacer()
                }// end Hstack2
                
                
            }//end VStack1
     //  }// end NavigationView
            .padding()
            .padding(.bottom, 170)
    }// end View
}//end ContentView
//#Preview {
//    ContentView()
//}


#Preview {
    createPage()
}

