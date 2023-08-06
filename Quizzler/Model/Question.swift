//
//  Question.swift
//  Quizzler
//
//  Created by Admin on 26.07.2023.
//

import Foundation

struct Question {
    let text:String
    let answer:String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
