//
//  selected.swift
//  minich1
//
//  Created by Reema Alshalan on 02/04/1445 AH.
//

import SwiftUI

struct selected: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var color2: Color
    
    @State var text: String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 50)
                .foregroundColor(isSelected ? color :.gray.opacity(0.1))
            Text(text)
                .foregroundColor(isSelected ? color2 :.gray)
            
        }
        
    }
    struct selected_Previews: PreviewProvider{
        
        static var previews: some View {
            selected(isSelected: .constant(false), color: .green, color2: .white, text: "test")
        }
    }
}
