//
//  yourTripToPage.swift
//  gooh1015
//
//  Created by Alghaliyah Alghofaili on 01/04/1445 AH.
//

import SwiftUI

struct yourTripToReciever: View {
    @State var showModal = false
    var body: some View {
            VStack (alignment: .leading, spacing:24) {
                VStack(alignment: .leading, spacing:24) {
                    Text("Amal")
                        .font(.title).bold()
                        .foregroundColor(Color("titleGray"))
                        .padding()
                    Divider()
                   }.padding()
               
               
                VStack() {
                    Text("Your Trip to  ...")
                        .font(.title).bold()
                        .foregroundColor(Color("titleGray"))
                    
                    
                    
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
                        
                        }
                
                
                HStack{
                    Spacer()
                    Button("Done!", action: {showModal=true})
                        .frame(width: 157, height: 48)
                        .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
                        .fullScreenCover(isPresented: $showModal){
                            TabBarViwe(selectedTab: "Two")
                        }
                    Spacer()
                }
            }}}
    #Preview {
        yourTripToReciever()
    }
