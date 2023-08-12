//
//  DisableUserActivity_allowHitTesting.swift
//  Flashzilla
//
//  Created by Brandon Johns on 8/9/23.
//

import SwiftUI

struct DisableUserActivity_allowHitTesting: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
            
            
        }
    }
}

struct DisableUserActivity_allowHitTesting_Previews: PreviewProvider {
    static var previews: some View {
        DisableUserActivity_allowHitTesting()
    }
}

/*
 ZStack {
 Rectangle()
     .fill(.blue)
     .frame(width: 300, height: 300)
     .onTapGesture {
         print("Rectangle Tapped")
     }
 
 Circle()
     .fill(.red)
     .frame(width: 300, height: 300)
     .contentShape(Rectangle())
     .onTapGesture {
         print("Circle Tapped")
     }
 
 
}
*/
