//
//  SignUpView.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//

import SwiftUI

struct SignUpView: View {
    @State var name: String=""
    @State var phoneNumber: String=""
    @State var password: String=""
    @State var showModal = false
    var body: some View {
        VStack(alignment: .leading,spacing: 24){
            VStack(alignment: .leading){
             
                 Text("Sign Up!")
                
                 .font(.title)
                 .bold()
                 .foregroundColor(Color("titleGray")).padding(.vertical)
                 Divider().padding(.vertical)
               //  Spacer()
            } .padding(.vertical)
            
            
             Text("Name").foregroundColor(Color("titleGray"))
             TextField(" ", text: $name)
                 .padding().background(Color("textFieldG")).cornerRadius(10)
            
            
             Text("Phone Number").foregroundColor(Color("titleGray"))
             TextField(" ", text: $phoneNumber)
                 .padding().background(Color("textFieldG")).cornerRadius(10)
             
             Text("Password").foregroundColor(Color("titleGray"))
             TextField(" ", text: $password)
                 .padding().background(Color("textFieldG")).cornerRadius(10)
           
            
            
            HStack{
                Spacer()
                Button("Sign Up", action: {showModal=true})
                    .frame(width: 157, height: 48)
                    .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
                    .fullScreenCover(isPresented: $showModal){
                        TabBarViwe()
                    }
                Spacer()
            }
            Spacer()
       }
        .padding()
       
    }

}

#Preview {
    SignUpView()
}
