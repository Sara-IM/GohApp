//
//  TabBarViwe.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//

import SwiftUI

struct TabBarViwe: View {
    @State  var selectedTab = "One"

    var body: some View {
        TabView (selection: $selectedTab) {
            
            DiscoverView().tabItem {
                Image(systemName: "globe")
                Text("Discover")
            }.tag("One")
            
            MyTripsView().tabItem {
                Image(systemName: "figure.wave")
                Text("My Trips")
            }.tag("Two")
        }.tint(Color("Green"))
    }
}

#Preview {
    TabBarViwe(selectedTab: "One")
}
