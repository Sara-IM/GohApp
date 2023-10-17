//
//  splashScreen.swift
//  GohApp
//
//
//  splashScreen.swift
//  GohApp
//
//  Created by maha on 01/04/1445 AH.
//



import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
          TabBarViwe(selectedTab: "One")
            } else {
               Color.white
                Image("logo")
                 
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
