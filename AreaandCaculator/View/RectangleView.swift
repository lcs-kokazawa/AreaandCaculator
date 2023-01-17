//
//  RectangleView.swift
//  AreaandCaculator
//
//  Created by Kiho Okazawa on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored properties
    let length: Double = 7
    let width: Double = 5
    
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
            //use string interpolation
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
