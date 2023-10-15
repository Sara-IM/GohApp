//
//  LoginScreenView.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//


import SwiftUI

struct LoginScreenView: View {
    
    @State var phoneNumber: String=""
    @State var password: String=""
    var body: some View {
        VStack(alignment: .leading,spacing: 24){
            
           VStack(alignment: .leading){
            
                Text("Hello Again!")
               
                .font(.title)
                .bold()
                .foregroundColor(Color("titleGray")).padding(.vertical)
                Divider().padding(.vertical)
              //  Spacer()
           } .padding(.vertical)
            
            
             Text("Phone Number").foregroundColor(Color("titleGray"))
             TextField(" ", text: $phoneNumber)
                 .padding().background(Color("textFieldG")).cornerRadius(10)
             
             Text("Password").foregroundColor(Color("titleGray"))
             TextField(" ", text: $password)
                 .padding().background(Color("textFieldG")).cornerRadius(10)
            HStack{
                Spacer()
                Button(action: {}){
                    Text("Forget Password?").foregroundColor(Color("Green"))
                }}
            
           
            HStack{
                Spacer()
                
                Text("Not Registered?").foregroundColor(Color("Gray"))
                Button(action: {}){
                    Text("Click here").foregroundColor(Color("Green")).italic()
                }
            Spacer()
            }
            
            
            
            HStack{
                Spacer()
                Button("Log In", action: {})
                    .frame(width: 157, height: 48)
                    .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
                
                Spacer()
                
            }
            Spacer()
       }
        .padding()
    }
}

#Preview {
    LoginScreenView()
}
