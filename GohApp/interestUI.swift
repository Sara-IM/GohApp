//
//  ContentView.swift
//  interestsUI
//
//  Created by Reema Alshalan on 26/03/1445 AH.
//

import SwiftUI

struct interestUI: View {
    @State var Distance : Int = 0
    @State var Budget : Int = 0
    @State var index : Bool = false
    /*@Binding var isSelected: Bool
    @State var color : Color
    @State var text : String*/
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            Text("Hello Alghaliyah!")//array later
                .font(.largeTitle)
                .bold()
                .padding(10)
            
            
            Divider()
            
            /*ZStack{
             Capsule()
             .frame(height: 50)
             .foregroundColor(isSelected ? color : .gray)
             Text(text)
             .foregroundColor(.black)
             }*/
            
            Text("Select your interests...").bold()
            
            HStack {
                tabButton(title: "restaurants")
                tabButton(title: "museums")
                tabButton(title: "work shops")
                
            }
            
            HStack {
                tabButton(title: "coffee shops")
                tabButton(title: "malls")
                tabButton(title: "concerts")
                
                tabButton(title: "cinema")
            }

            
            Stepper {
                Text("Most likely to spend...").bold()
                Text("\(Budget) SAR")
            } onIncrement: {
                Budget += 1
            } onDecrement: {
                Budget -= 1
            }.padding()
            
            
            Stepper {
                Text("Distance...").bold()
                Text("\(Distance) km")
            } onIncrement: {
                Distance += 1
            } onDecrement: {
                Distance -= 1
            }.padding()
        }.padding()
        }
    func tabButton(title: String )-> some View{
        Button{
            print("\(title)")
        }label: {
            Text(title).font(.system(size: 12))
        }
        .padding()
        
        .background(self.index ? Color(.green).opacity(0.2): Color(.lightGray).opacity(0.2))
        
        .foregroundColor(.gray)
        .clipShape(Capsule())
    }
    
    

    }



/*struct ContenView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView(isSelected:.constant(false), color: .blue, text: "option")
    }
}*/


#Preview {
    interestUI(/*isSelected:.constant(false), color: .blue, text: "option"*/index: false)
    
   
}



