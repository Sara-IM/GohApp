//
//  ContentView.swift
//  GohApp
//
//  Created by Amal Saad on 24/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    let literalColor = Color(#colorLiteral(red: 0.3589375615, green: 0.5140314698, blue: 0.455712378, alpha: 1))

    var body: some View {
       
        VStack {
           
            //.foregroundColor(Color("textFieldG")) to pu our colors
            
            Text("Create your journey").bold().font(.largeTitle)
            Divider()
            
           // Label("Your Location")
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: "Your Location")
//            ZStack {
//                    Button("Send") {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    }.buttonStyle(.borderedProminent)
//            }
                .padding()
            //---------------------------
//                ZStack{// this stack for custom color of btn
//                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color(literalColor))
//                        .frame(width: 123, height: 55)
//                    Text("Send").font(.title2)//.color(.white)
//                }// end zstack
            
            //-----------------------
                //.buttonStyle(.borderedProminent)
                
             //.tint(.orange)
                //.buttonStyle(.borderedProminent)// end btn
                
            //}// end ZStack
        }//end VStack
   //-----------------------------------
   //-----------------------------------

        
        
        
        .padding()
        
    }// end View
}//end ContentView


#Preview {
    ContentView()
}
//.buttonStyle(CustomButtonStyle())
/*struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(#colorLiteral(red: 0.3647058967, green: 0.5137255063, blue: 0.4666666667, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
*/
