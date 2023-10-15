//
//  MyTripsView.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//

import SwiftUI

struct MyTripsView: View {
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 24){
            
            VStack(alignment: .leading){
                HStack{
                    Text("Hello Again!")
                    
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("titleGray")).padding(.vertical)
                    Spacer()
                    
                    Button(action: {}){
                        Image(systemName: "plus").foregroundColor(Color("Green")).font(.system(size: 26))
                    }
                }
                Divider().padding(.vertical)
                //  Spacer()
            } .padding(.vertical)
            
            
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MyTripsView()
}
