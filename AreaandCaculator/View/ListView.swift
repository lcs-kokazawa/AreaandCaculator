//
//  ListView.swift
//  AreaandCaculator
//
//  Created by Kiho Okazawa on 2023-01-19.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            
            NavigationLink(destination: {
                RectangleView()
            }, label: {
                Text("Rectangle")
            })
           NavigationLink(destination: {
               ParallelogramView()
           }, label: {
               Text("Parallelogram")
           })
        }
        .navigationTitle("Area and Perimeter")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        
    }
}
