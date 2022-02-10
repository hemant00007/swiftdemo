//
//  Circleview.swift
//  demo_new
//
//  Created by hemant kumar on 02/02/22.
//

import SwiftUI

struct Circleview: View {
    var body: some View {
        Image("hemant")
            .resizable()
            .scaledToFit()
            .frame(height:400 )
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.yellow,lineWidth: 4)
            )
            .shadow(radius: 10)
    }
}

struct Circleview_Previews: PreviewProvider {
    static var previews: some View {
        Circleview()
    }
}
