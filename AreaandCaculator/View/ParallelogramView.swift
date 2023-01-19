//
//  ParallelogramView.swift
//  AreaandCaculator
//
//  Created by Kiho Okazawa on 2023-01-19.
//

import SwiftUI

struct ParallelogramView: View {
    
    //MARK: Stored properties
    @State var base : Double = 8
    @State var height : Double = 10
    @State var side : Double = 6
    
    //MARK: Comoputed properties
    var area : Double {
        return base * height
    }
    var perimeter : Double {
        return side + side + base + base
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image("parallelogram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
                
            }
            
            Group {
               Text("base")
                    .font(.title2)
                    .bold()
                Slider(value:$base, in: 0...100, label: {Text("Base")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
                Text("\(base.formatted(.number.precision(.fractionLength(2))))")
                
            }
            Group {
               Text("height")
                    .font(.title2)
                    .bold()
                Slider(value:$height, in: 0...100, label: {Text("Height")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
                Text("\(height.formatted(.number.precision(.fractionLength(2))))")
                
            }
            Group {
               Text("side")
                    .font(.title2)
                    .bold()
                Slider(value:$side, in: 0...100, label: {Text("Side")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
                Text("\(side.formatted(.number.precision(.fractionLength(2))))")
                
            }
            Group {
                
                //Area
                Text("Area")
                    .font(.title2)
                    .bold()
                
                //Use the string interpolation \() to display area
                Text("\(area.formatted(.number.precision(.fractionLength(2))))")
            }
            
        }
        Spacer()
    }
}

struct ParallelogramView_Previews: PreviewProvider {
    static var previews: some View {
        ParallelogramView()
    }
}
