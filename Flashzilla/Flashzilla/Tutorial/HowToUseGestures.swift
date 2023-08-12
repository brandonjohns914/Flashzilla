//
//  HowToUseGestures.swift
//  Flashzilla
//
//  Created by Brandon Johns on 8/8/23.
//

//childs gesture gets priority

import SwiftUI

struct HowToUseGestures: View {
  
    
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    
    var body: some View {
        
        let dragGesture = DragGesture()
            .onChanged { value in
                offset = value.translation
            }
            .onEnded { _ in
                withAnimation {
                    offset = .zero
                    isDragging = false
                }
            }
        
        
        let pressGesture = LongPressGesture()
            .onEnded { value in
                withAnimation {
                    isDragging = true
                }
            }
        
        let combined = pressGesture.sequenced(before: dragGesture)
        
        Circle()
            .fill(.red)
            .frame(width: 64, height: 64)
            .scaleEffect(isDragging ? 1.5 : 1)
            .offset(offset)
            .gesture(combined)
        
    }
}

struct HowToUseGestures_Previews: PreviewProvider {
    static var previews: some View {
        HowToUseGestures()
    }
}


/*
 
 
 @State private var currentAmountscale = 0.0
 @State private var finalAmountscale = 1.0
 
 @State private var currentAmountrotation = Angle.zero
 @State private var finalAmountrotation = Angle.zero
 
 
 var body: some View {
 
 Text("Rotation")
     .rotationEffect(finalAmountrotation + currentAmountrotation)
     .gesture(
         RotationGesture()
             .onChanged { angle in
                 
                 currentAmountrotation = angle
             }
             .onEnded { angle in
                 finalAmountrotation += currentAmountrotation
                 currentAmountrotation = .zero
             }
     )
 
 Spacer()

 
 Text("Scale")
     .scaleEffect(finalAmountscale + currentAmountscale)
     .gesture(
         MagnificationGesture()
             .onChanged { amount in
                 
                 currentAmountscale = amount - 1
             }
             .onEnded { amount in
                 finalAmountscale += currentAmountscale
                 currentAmountscale = 0
             }
     )
 }
 
 
 var body: some View {
     VStack {
         Text("Hello, World")
             .onTapGesture {
                 print("Text Tapped!")
             }
     }
     .simultaneousGesture (
         TapGesture()
             .onEnded {
                 print("VStack Tapped")
             }
     )
 }
 
 
 
 // VStack priority
 .highPriorityGesture (
 TapGesture()
     .onEnded {
         print("VStack Tapped")
     }
)
 */
