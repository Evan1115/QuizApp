//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by lim lee jing on 20/04/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [  Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                  Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                  Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                  Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                  Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                  Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                  Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                  Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                  Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                  Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]// array of question object
    
    var i = 0 // questionNumber
    var score = 0
    
    //change the title of th button each time when new question is appeared
    func buttonTitle() -> [String] {
        return quiz[i].choice
        
    }
    
    //check answer
    mutating func checkAnswer(_ userAnswer: String) -> Bool{ // _ is eternal parameter
        if userAnswer ==  quiz[i].correctAnswer{
            score += 1
            return true
        } else{
            return false
        }
    }
    
    //show question
    func getQuestion () -> String{
        return quiz[i].text
    }
    
    //update progress bar
    func getProgress() -> Float{
        return Float(i)/Float(quiz.count)
    }
    
    //update question if out of question then will reset the question
    mutating func nextQuestion(){
        if i + 1 < quiz.count {
            i += 1
        }
        else{
            i = 0
            score = 0
            
        }
    }
    
    //get score
    mutating func getScore() -> Int{
        
        return score
    }
    
}
