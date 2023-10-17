//
//  interestUIReciever.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 17/10/2023.
//
//
//  ContentView.swift
//  interestsUI
//
//  Created by Reema Alshalan on 26/03/1445 AH.
//

import SwiftUI

struct interestUIReciever: View {
    @State var Distance : Int = 0
    @State var Budget : Int = 0
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    @State private var isSelected7 = false
    @State var showModal = false
    
    //@State var index : Bool = false
    /*@Binding var isSelected: Bool
    @State var color : Color
    @State var text : String*/
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            Text("Hello Amal!")//array later
                .font(.largeTitle)
                .bold()
                .padding(10)
            
            
            Divider()
            

            Text("Select your interests...").bold()
            
            HStack{
                selected(isSelected: $isSelected1, color: .green,color2: .white ,text: "concerts").onTapGesture {
                    isSelected1.toggle()
                    
                }
 
                selected(isSelected: $isSelected2,color: .green,color2: .white ,text: "malls").onTapGesture {
                    isSelected2.toggle()
                    
                    
                }
                
                selected(isSelected: $isSelected3,color: .green,color2: .white ,text: "museums").onTapGesture {
                    isSelected3.toggle()
                    
                }
                
                selected(isSelected: $isSelected7,color: .green,color2: .white ,text: "cinema").onTapGesture {
                    isSelected7.toggle()
                    
                }
            }
            
            HStack {
                selected(isSelected: $isSelected4, color: .green,color2: .white ,text: "coffee shops").onTapGesture {
                    isSelected4.toggle()
                    
                }
                
                selected(isSelected: $isSelected5,color: .green,color2: .white ,text: "work shops").onTapGesture {
                    isSelected5.toggle()
                    
                }
                
                selected(isSelected: $isSelected6,color: .green,color2: .white ,text: "restaurants").onTapGesture {
                    isSelected6.toggle()
                    
                }
                

            }
            

            
            /*HStack {
                tabButton(title: "restaurants")
                tabButton(title: "museums")
                tabButton(title: "work shops")
                
            }
            
            HStack {
                tabButton(title: "coffee shops")
                tabButton(title: "malls")
                tabButton(title: "concerts")
                
                tabButton(title: "cinema")
            }*/

            
            Stepper {
                Text("Most likely to spend...").bold()
                Text("\(Budget) SAR")
            } onIncrement: {
                Budget += 10
            } onDecrement: {
                Budget -= 10
            }.padding()
            
            
            Stepper {
                Text("Distance...").bold()
                Text("\(Distance) km")
            } onIncrement: {
                Distance += 1
            } onDecrement: {
                Distance -= 1
            }.padding()
            
            
            HStack{
                Spacer()
                Button("Submit", action: {showModal=true})
                    .frame(width: 157, height: 48)
                    .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
                    .fullScreenCover(isPresented: $showModal){
                        yourTripToReciever()
                    }
                Spacer()
            }
        }.padding()
        }
    func tabButton(title: String )-> some View{
        Button{
            print("\(title)")
        }label: {
            Text(title).font(.system(size: 12))
        }
        .padding()
        
        .background(Color(.green).opacity(0.2)// Color(.lightGray).opacity(0.2))
                    )
        
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
    interestUIReciever()
    
   
}



