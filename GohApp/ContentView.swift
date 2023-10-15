//
//  ContentView.swift
//  GohApp
//
//  Created by Amal Saad on 24/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{//Vstack 1
              
                NavigationLink {
                    createPage()
                } label: {
                    Text("Click here to go createPage")
                }
                
                .padding()
                NavigationLink {
                    invitationsPage()
                } label: {
                    Text("Click here to go invitationsPage")
                }
            }//end Vstack 1
        }//end NavigationStack
    }//end body
}//end struct
#Preview {
    ContentView()
}
/*
 @State var userLocation : String = " "
 @State var phoneNumber : Int = 0
 @State var index = 0
 @State private var isAccepted = Bool()
 var body: some View {
     NavigationStack {
         VStack(alignment: .leading, spacing: 24){
             
             //trailing right
             //.foregroundColor(Color("textFieldG")) to up our colors
             
             Text("Create your journey").bold().font(.largeTitle)
                 .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
             
             Divider()
             //--------------------------------------------------
             HStack{//Hstack 1
                 Text("Create")
                     .foregroundColor(self.index == 0 ? .white: Color("Green").opacity(0.7))
                     .fontWeight(.bold).font(.title3)
                     .padding(.horizontal, 40)//55
                     .padding(.vertical, 9)//12
                     .background(Color("Green")
                         .opacity(self.index == 0 ? 1 : 0 ))
                     .clipShape(Capsule())
                     .onTapGesture {
                         self.index = 0
                     }
                 Spacer(minLength: 0)
                 Text("Invitations")//d
                     .foregroundColor(self.index == 1 ? .white: Color("Green").opacity(0.7))//d
                     .fontWeight(.bold).font(.title3)
                 // .padding(.horizontal, 5)// vertical//d
                     .padding(.horizontal, 30)//52
                     .padding(.vertical, 9)//35
                     .background(Color("Green")
                         .opacity(self.index == 1 ? 1 : 0 ))
                     .clipShape(Capsule())//d
                     .onTapGesture {
                         self.index = 1   //1
                     }//  .background(
             }//end Hstack1
//                .background(
//                    NavigationLink(" ", destination: invitationsPage(), isActive: $isAccepted)
//                )
             .frame(width: 306, height: 48)//end stack
             .background(Color("titleGray").opacity(0.04))//.border(Color("titleGray")))//0.07
             //the number of opacity is the dgree of bule color is 0.06
             .clipShape(Capsule())//.border(Color("titleGray"))
             
             .padding(.horizontal )//horizontal
             .padding(.top , 40)
             .padding(.bottom,40)
             //  .padding()
             // Spacer(minLength: 0)
             
             //----------------------------------------------------
             
             Label("Your Location", systemImage: " ")
             TextField(" ", text: $userLocation)
                 .padding()
                 .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
             
             Label("Phone number", systemImage: " ")
             HStack{
                 TextField(" ", text: $userLocation)
                     .padding()
                     .background(Color("textFieldG"  )).cornerRadius(10)
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
     }// end NavigationView
     .padding()
 }// end View
}//end ContentView
 */
