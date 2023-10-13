//
//  ContentView.swift
//  GohApp
//
//  Created by Amal Saad on 24/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
   // let literalColor = Color(#colorLiteral(red: 0.3589375615, green: 0.5140314698, blue: 0.455712378, alpha: 1))
   // @State var index = 0
    @State var userLocation : String = " "
    @State var phoneNumber : Int = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 24){
        
        //trailing right
        //.foregroundColor(Color("textFieldG")) to up our colors
        
        Text("Create your journey").bold().font(.largeTitle)
        .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
        
        Divider()
        //  foregroundColor(_:), foregroundStyle(_:), and tint(_:)
        Label("Your Location", systemImage: " ")
        TextField(" ", text: $userLocation)
        .padding()
        .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
        
        Label("Phone number", systemImage: " ")
        TextField(" ", text: $userLocation)
        .padding()
        .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
        
        HStack {
        Spacer()
        Button("Sign In", action: {})
        .frame(width: 157, height: 48)
        //.padding(20)
        .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
        Spacer()}// end Hstack2
        
        }//end VStack1
        
        .padding()
    }// end View
}//end ContentView
#Preview {
    ContentView()
}
/*
 VStack(alignment: .leading, spacing: 24){
 
 //trailing right
 //.foregroundColor(Color("textFieldG")) to up our colors
 
 Text("Create your journey").bold().font(.largeTitle)
 .foregroundColor(Color("titleGray"))/*.opacity(0.3)*/.cornerRadius(10)
 
 Divider()
 //  foregroundColor(_:), foregroundStyle(_:), and tint(_:)
 Label("Your Location", systemImage: " ")
 TextField(" ", text: $userLocation)
 .padding()
 .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
 
 Label("Phone number", systemImage: " ")
 TextField(" ", text: $userLocation)
 .padding()
 .background(Color("textFieldG")/*.opacity(0.3)*/.cornerRadius(10))
 
 HStack {
 Spacer()
 Button("Sign In", action: {})
 .frame(width: 157, height: 48)
 //.padding(20)
 .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
 Spacer()}// end Hstack2
 
 }//end VStack1
 
 //-----------------------------------
 //-----------------------------------
 
 
 
 
 */
//-----------------------------------------------------------------
//-----------------------------------------------------------------

