//  MyTrips.swift
//  GohApp
//
//  Created by maha on 01/04/1445 AH.
//

import SwiftUI

struct MyTrips: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading,spacing: 24){
                
                VStack(alignment: .leading){
                    HStack{
                        Text("My Trips")
                        
                            .font(.title)
                            .bold()
                            .foregroundColor(Color("titleGray")).padding(.vertical)
                        Spacer()
                        
                        Button(action: {}){
                            Image(systemName: "plus").foregroundColor(Color("Gray")).font(.system(size: 26))
                            
                            
                            
                        }
                    }
                    Divider().padding(.vertical)
                    //  Spacer()
                    Spacer()
                    HStack{
                        Spacer()
                        VStack{
                            
                            Image(systemName: "eyes").foregroundColor(Color("Gray")).font(.system(size: 50))
                            
                            
                            
                            Text("Oops you are not logged in ?  ").foregroundColor(Color("Gray")).font(.title2)
                            
                            
                            NavigationLink {
                                LoginScreenView()
                            } label: {
                                Text("Login").foregroundColor(Color("Green"))
                            }
                            //.offset(y:200)
                            
                            
                        }
                        Spacer()}
                    
                    Spacer()
                    
                } .padding(.vertical)
                
                
                
                
                
                
            }
            .padding()
        }
    

    }
}

#Preview {
    MyTrips()
}
