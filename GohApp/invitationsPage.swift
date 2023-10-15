//
//  invitationsPage.swift
//  GohApp
//
//  Created by Amal Saad on 29/03/1445 AH.
//

import SwiftUI

struct invitationsPage: View {
    @State var userLocation : String = " "
    @State var phoneNumber : Int = 0
    @State var index = 0
    @State private var isAccepted = Bool()
     @State private var showResponse = Bool()
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24){
                
                
                //trailing right
                //.foregroundColor(Color("textFieldG")) to up our colors
                
                Text("Your Invitations").bold().font(.largeTitle)
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
                        }
                }// end Hstack
                .frame(width: 306, height: 48)//end stack
                    .background(Color("titleGray").opacity(0.1))//.border(Color("titleGray")))//0.07
                //the number of opacity is the dgree of bule color is 0.06
                    .clipShape(Capsule())//.border(Color("titleGray"))
                    .padding(.horizontal )//horizontal
                    .padding(.top , 40)
                    .padding(.bottom,40)
                //  .padding()
                // Spacer(minLength: 0)
                
                //----------------------------------------------------
                //  foregroundColor(_:), foregroundStyle(_:), and tint(_:)
                //You have received an invitation to a trip from
                Label("You have received invite to a trip from :", systemImage: " ")
                HStack{//Hstack 2
                TextField(" ", text: $userLocation)
                    .padding()
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
                    NavigationLink(" ", destination: testPage() , isActive : $isAccepted))
                }//ens Hstack 2
                
                
                //'init(_:destination:isActive:)' was deprecated in iOS 16.0: use NavigationLink(value:label:), or navigationDestination(isPresented:destination:), inside a NavigationStack or NavigationSplitView
                
                
                
                
                
                
                
                //----------------------------------------------------
                
                //  .padding(.top, 200)
                
            }//end VStack1
            // Spacer()
            //.padding(.top)
        }// end Navigation
        .padding()
        .padding(.bottom, 200)
    }
}

#Preview {
    invitationsPage()
}
