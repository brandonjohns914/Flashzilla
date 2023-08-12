//
//  Card.swift
//  Flashzilla
//
//  Created by Brandon Johns on 8/11/23.
//

import Foundation

struct Card: Codable {
    let prompt: String
    
    let answer: String
    
    static let example = Card(prompt: "What kind of dog is Ellie?", answer: "AussieDoodle")
}
