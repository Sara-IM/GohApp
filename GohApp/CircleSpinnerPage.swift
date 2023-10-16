//
//  CircleSpinnerPage.swift
//  gooh1015
//
//  Created by Alghaliyah Alghofaili on 01/04/1445 AH.
//

import SwiftUI

import SwiftUI
struct CircleSpinner: View {
    @State private var rotation = 0.0
    
    var body: some View {
        VStack (alignment: .leading, spacing:24) {
            VStack(alignment: .leading, spacing:24) {
                Text("Amal")
                    .font(.title).bold()
                    .foregroundColor(.black)
                    .padding()
                Divider()
                
            }.padding().offset(y:-150)
            
            
            VStack() {
                Text("Your Trip to  ...")
                    .font(.title).bold()
                    .foregroundColor(.black)
                    .padding()
                
                HStack(){Spacer()
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 10)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 200)
                        
                        Circle()
                            .trim(from: 0, to: 0.5)
                            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color("Green"))
                            .frame(width: 200, height: 200)
                            .rotationEffect(Angle(degrees: rotation))
                    }
                    .onAppear {
                        withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                            rotation += 360
                        }
                    }
                    
                    Spacer()  }
            }.offset(y:-60 )
        }
        Spacer()
    }}
struct CircleSpinner_Previews: PreviewProvider {
    static var previews: some View {
        CircleSpinner()
    }
}
