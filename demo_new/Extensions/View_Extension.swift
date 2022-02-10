//
//  View_Extension.swift
//  demo_new
//
//  Created by hemant kumar on 08/02/22.
//

import SwiftUI

extension View {
    func navigate<NewView: View> (to view: NewView, when binding: Binding<Bool>) -> some View {
       
        NavigationView {
            ZStack {
                self
                    .navigationTitle("")
                    .navigationBarHidden(true)
                
                NavigationLink (
                    Destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                    
                ){
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
