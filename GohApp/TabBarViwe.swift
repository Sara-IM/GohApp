//
//  TabBarViwe.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//

import SwiftUI

struct TabBarViwe: View {
    var body: some View {
        TabView{
            DiscoverView().tabItem {
                Image(systemName: "globe")
                Text("Discover")
            }
            
            MyTripsView().tabItem {
                Image(systemName: "figure.wave")
                Text("My Trips")
            }
        }.tint(Color("Green"))
    }
}

#Preview {
    TabBarViwe()
}
