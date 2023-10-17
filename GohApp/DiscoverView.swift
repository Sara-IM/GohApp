//
//  kkkk.swift
//  GohApp
//
//  Created by maha on 30/03/1445 AH.
//

import SwiftUI

struct DiscoverView: View {
    // let literalColor = Color(#colorLiteral(red: 0.3589375615, green: 0.5140314698, blue: 0.455712378, alpha: 1))
    // @State var index = 0
    @State var userLocation : String = " "
    @State var phoneNumber : Int = 0
    
    var body: some View {
      
        @State var searchText = ""

       
            NavigationStack {
                
                
                
                ScrollView {
                

              
                    VStack(spacing: 10) {
                        Text("\(searchText)")

                            VStack{
                                
                                HStack{
                                  //  ZStack{
                                        Image("Mu1")
                                            .resizable()
                                            .frame(width:150 , height: 150)
                                            .cornerRadius(20)
                                         
                                    
                                    
                                    Image("Mu2")
                                        .resizable()
                                        .frame(width:150 , height: 150)
                                        .cornerRadius(20)
//                                    VStack{
//                                        Spacer()
//                                    }
                                    
                                  //  }
                                  
                                }
                                
                               // Spacer()
                                
                             
                                   // Spacer()
                              
                                
                                HStack{
                                    VStack{
                                       // Spacer()
                                   
                                    
                                            Image("Mu3")
                                                .resizable()
                                                .frame(width:150 , height: 150)
                                                .cornerRadius(20)
                                        
                                             
                                      //  Spacer()
                                    }
                             
                                        Image("Mu4")
                                            .resizable()
                                            .frame(width:150 , height: 150)
                                            .cornerRadius(20)
                                          //  .frame(maxWidth: 190)
                                        
                                    
                                        
                                   // }
                                }
                            }
                    }
                }
                .navigationTitle("Discover")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {}){
                           Image(systemName: "person.fill")
                                .padding(.top, 90).foregroundColor(Color("Green"))
                            
                        }
                    }
                }
            .searchable(text: $searchText)
            }
           // .padding()
    }
        
}


#Preview {
    DiscoverView()
}

