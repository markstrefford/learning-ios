//
//  Question.swift
//  Quizzler
//
//  Created by Mark Strefford on 27/06/2019.
//  Copyright © 2019 Timelaps AI Limited. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
