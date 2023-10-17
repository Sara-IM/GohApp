//
//  ContentView.swift
//  ctab
//
//  Created by Amal Saad on 01/04/1445 AH.
//

import SwiftUI

struct topTapView: View {
    @State var selected = 0
    var body: some View {
        NavigationStack{
             // ScrollViewReader{ _ in
          //  VStack{
                GeometryReader { _ in
                    Topbar(selected: self.$selected)
                    
                }
                .background(Color("Color")
                    .edgesIgnoringSafeArea(.all))
                
                
                if (selected == 0){
                    ContentView1()
                    
                }
                if (selected == 1){
                    ContentView2()
                }
           // }
        }
        }//end nav
    }
    

#Preview {
    ContentView()
}


struct Topbar : View{
    @Binding var selected : Int
    var body: some View{
        NavigationStack {
            HStack{
                Button(action: {
                    self.selected = 0
                }) {
                    Text("Create")
                    //.resizable()
                        .frame(width: 90 , height: 25)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 30)
                        .background(self.selected == 0 ? Color("Green") : Color.clear)
                        .clipShape(Capsule())
                }
                .foregroundColor(self.selected == 0 ? Color("whaite"): Color("Green"))
                
                
                Button(action: {
                    self.selected = 1
                }) {
                    //Image("acc")
                    Text("Invitations").font(.title3)
                    //   .resizable()
                        .frame(width: 90 , height: 25)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 30)
                        .background(self.selected == 1 ? Color("Green") : Color.clear)
                        .clipShape(Capsule())
                }
                .foregroundColor(self.selected == 1 ? Color("whaite") : Color("Green"))
                
                
                
            }
          //  Spacer()
            .padding(3)
            .background(Color("textFieldG"))
           // .opacity(0.4)
            .clipShape(Capsule())
            .padding(.leading, 40)
            .padding(.top, 40)
    
        }
        
    }
    
}

struct ContentView1: View {
    @State var SegmentedChoice = 0
    var body: some View {
        ZStack {
            createPage()
         // mapPage()
            }
    }
}

struct ContentView2: View {
    @State var SegmentedChoice = 0
    var body: some View {
        ZStack {
            invitationsPage()
            }
    }
}
 

