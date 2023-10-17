
import SwiftUI

struct createPage: View {

    @State var userLocation : String = " "
    @State var phoneNumber : Int = 0
    @State var index = 0
    @State private var isAccepted = Bool()
    @State var isPage2Active: Bool = false
    @State var btn = false
    @State var phoneNumbers: [String] = [""]
    var body: some View {
        
         NavigationStack{
        //  ScrollView {
        VStack(alignment: .leading, spacing: 24){
            Spacer()
           
            Text("Create your journey").bold().font(.largeTitle)
                .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
              
            
            Divider()
                .padding(.bottom,40)
            //--------------------------------------------------
            //----------------------------------------------------
            Label("Your Location", systemImage: " ")
            NavigationLink(destination: mapPage()) {
            ZStack {
            TextField(" ", text: $userLocation)
                .disabled(true)
                .padding()
                .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
                Image(systemName: "triangle.fill")
                    .padding(.trailing, 300)
                    .font(.system(size: 20))
                    .foregroundColor(Color("Green"))
                    .rotationEffect(Angle(degrees: 180))
          
            }
           
               
                   
               
            }
            Label("Phone number", systemImage: " ")
            ForEach(0..<phoneNumbers.count, id: \.self) { index in
           
           
                HStack {
                    TextField(" ", text: $phoneNumbers[index])
                        .padding()
                        .background(Color("textFieldG").cornerRadius(10))
                    if index == phoneNumbers.count - 1 && phoneNumbers.count < 3 {
                        Button(action: {
                            phoneNumbers.append("")
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.system(size: 40))
                                .foregroundColor(Color("Green"))
                                
                            
                        }
                    }
                    
                    
                }
            }//end for each
         
            HStack {// hstack2
                Spacer()
                Button("Send", action: {
                    isPage2Active = true
                })
                    .frame(width: 157, height: 48)
                //.padding(20)
                    .buttonStyle(.bordered)
                    .background(Color("Green"))
                    .foregroundColor(.white)
                    .cornerRadius(21)
                    .bold()
                Spacer()
                
            }// end Hstack2
            NavigationLink("", destination: interestUI(), isActive: $isPage2Active)
            
            
        }//end VStack1
        //  }// end NavigationView
        .padding()
       // .padding(.bottom, 130)
        
    }
}//

  }


#Preview {
    createPage()
}

