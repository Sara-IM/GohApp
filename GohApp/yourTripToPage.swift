//
//  yourTripToPage.swift
//  gooh1015
//
//  Created by Alghaliyah Alghofaili on 01/04/1445 AH.
//

import SwiftUI

struct yourTripToPage: View {
    var body: some View {
            VStack (alignment: .leading, spacing:24) {
                VStack(alignment: .leading, spacing:24) {
                    Text("Alghaliyah")
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .padding()
                    Divider()
                   }.padding()
               
               
                VStack() {
                    Text("Your Trip to  ...")
                        .font(.title).bold()
                        .foregroundColor(.black)
                    
                    
                    
                    HStack(){Spacer()
                        Image("صورة")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Gray"), lineWidth: 2)
                            )
                        Spacer()
                    }
                        Text("The Groves")
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        Spacer()}
            }}}
    #Preview {
        yourTripToPage()
    }
