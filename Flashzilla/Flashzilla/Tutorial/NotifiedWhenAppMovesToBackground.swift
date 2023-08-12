//
//  NotifiedWhenAppMovesToBackground.swift
//  Flashzilla
//
//  Created by Brandon Johns on 8/10/23.
//

import SwiftUI

struct NotifiedWhenAppMovesToBackground: View {
    
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        Text("Hello, world!")
                    .padding()
                    .onChange(of: scenePhase) { newPhase in
                        if newPhase == .active {
                            print("Active")
                        } else if newPhase == .inactive {
                            print("Inactive")
                        } else if newPhase == .background {
                            print("Background")
                        }
                    }
    }
}

struct NotifiedWhenAppMovesToBackground_Previews: PreviewProvider {
    static var previews: some View {
        NotifiedWhenAppMovesToBackground()
    }
}
