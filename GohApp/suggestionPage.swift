//
//  suggestionPage.swift
//  GohApp
//
//  Created by Alghaliyah Alghofaili on 01/04/1445 AH.
//


import SwiftUI

struct suggestionPage: View {
    @State var showModal = false
    var body: some View {
        VStack (alignment: .leading, spacing:24) {
            Text("Alghaliyah")
                .font(.title).bold()
                .foregroundColor(Color("titleGray"))
      
                //.padding()
            Divider()
            Text("Our Suggestion ...")
                .font(.title).bold()
                .foregroundColor(Color("titleGray"))
            .padding()

            HStack {
                VStack {
                    Image("Unknown2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Gray"), lineWidth: 2)
                        )
                    Text("VIA Riyadh")
                        .font(.caption)
                    .foregroundColor(.gray)}
                .padding()
                VStack {
                    Image("Unknown")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Gray"), lineWidth: 2)
                        )
                    Text("Wonder Winter land")
                        .font(.caption)
                    .foregroundColor(.gray)}
                .padding()}
            HStack {
                VStack {
                    Image("صورة")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Gray"), lineWidth: 2)
                        )
                    Text("The Groves")
                        .font(.caption)
                    .foregroundColor(.gray)}
                .padding()
                VStack {
                    Image("images")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Gray"), lineWidth: 2)
                        )
                    Text("BLVD World")
                        .font(.caption)
                    .foregroundColor(.gray)}
                .padding()}
            
            
            
            HStack{
                Spacer()
                Button("Go", action: {showModal=true})
                    .frame(width: 157, height: 48)
                    .buttonStyle(.bordered).background(Color("Green")).foregroundColor(.white).cornerRadius(21).bold()
                    .fullScreenCover(isPresented: $showModal){
                        yourTripToPage()
                    }
                Spacer()
            }
        }
        .padding()
       // .padding(.bottom, 10)
    }//end body
          }//endContentView
    
#Preview {
    suggestionPage()
}
