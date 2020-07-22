//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by lim lee jing on 19/04/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text : String
    let choice : [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        choice = a
        self.correctAnswer = correctAnswer
    }
    
}
