//
//  RectangleView.swift
//  AreaandCaculator
//
//  Created by Kiho Okazawa on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored properties
    //@State is a property wrapper
    //telling SwiftUI to "watch" these properties for changes
    //Update the user interface when they do change
    @State var length: Double = 7
    @State var width: Double = 5
    
    //MARK: Computed properties
    var area: Double {
        return length * width
    }
    var perimeter : Double {
        return length + length + width + width
    }
    
    //show opur user interface
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image("rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
                
            }
            
            Group {
                //length
                Text("Length")
                    .font(.title2)
                    .bold()
                
                //Slider to control length
                Slider(value: $length, in: 0...100, label: { Text("Length")}, minimumValueLabel: { Text("0")}, maximumValueLabel: { Text("100")})
                
                // Show the length
                Text("\(length.formatted(.number.precision(.fractionLength(2))))")
            }
            
            
            Group {
                //use string interpolation \() to display length
                Text("Width")
                    .font(.title2)
                    .bold()
                
                //Slider to control width
                Slider(value: $width, in: 0...100, label: {Text("Width")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
                
                //use string interpolation \() to display width
                Text("\(width)")
                
            }
            
            Group {
                
                //Area
                Text("Area")
                    .font(.title2)
                    .bold()
                
                //Use the string interpolation \() to display area
                Text("\(area)")
            }
            
            Group {
                
                Text("Perimeter")
                    .font(.title2)
                    .bold()
                Text("\(perimeter)")
                
              
                
                
                
                
            }
            Spacer()
        }
        Spacer()
    }
    
    struct RectangleView_Previews: PreviewProvider {
        static var previews: some View {
            RectangleView()
        }
    }
    
}
