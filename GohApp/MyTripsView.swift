//
//  MyTripsView.swift
//  GohApp
//
//  Created by Sara Ibrahim Almashharawi on 15/10/2023.
//

import SwiftUI
struct Trips: Identifiable{
    var id = UUID()
    var img = ""
    var date = Date()
}

struct TripsRow: View {
    var trips: Trips
    
    var body: some View {
        HStack{
            Image(trips.img)
                        .resizable()
                        .frame( width: 85, height: 85)
                        .padding()
            VStack(alignment: .leading){
                HStack{
                    // Text(trips.date, style: .day)
                    Text(trips.date, style: .time).foregroundColor(Color("titleGray"))}
                Text(trips.date, style: .date).foregroundColor(Color("titleGray"))
            }
        }
        
    }
}
struct MyTripsView: View {
    
    
    var body: some View {
        
        let first = Trips(img:"via",date: Date())
        let seconed = Trips(img:"blvd",date: Date())
        
       let trips = [first, seconed]
        
        
        VStack(alignment: .leading){
            
            VStack(alignment: .leading){
                HStack{
                    Text("My Trips")
                    
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("titleGray")).padding(.vertical)
                    Spacer()
                    
                    Button(action: {}){
                        Image(systemName: "plus").foregroundColor(Color("Green")).font(.system(size: 26))
                    }
                }
                Divider()
                //  Spacer()
            }
            
            List(trips) {trip in TripsRow(trips: trip)}
                .listStyle(.plain)
                
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    MyTripsView()
}
