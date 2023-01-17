//
//  RectangleView.swift
//  AreaandCaculator
//
//  Created by Kiho Okazawa on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored properties
    //@state is a property wrapper
    //telling SwiftUI to "watch" these properties for change
    //
   @State var length: Double = 7
    @State var width: Double = 5
    
    //MARK: Computed properties
    var area: Double {
        return length * width
    }
    
    //show opur user interface
    var body: some View {
        VStack {
            HStack {
                Image("rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
                
            }
            
            //length
            Text("Length")
                .font(.title2)
                .bold()
            
            //Slider to control length
            Slider(value: Binding.constant(length), in: 0...100, label: { Text("Length")}, minimumValueLabel: { Text("0")}, maximumValueLabel: { Text("100")})
           
            //use string interpolation to display length
            Text("Width")
                .font(.title2)
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
