//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
   
    
    var quizBrain = QuizBrain() 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // true,false
        let trueOrFalse = quizBrain.checkAnswer(userAnswer) // pass userAnswer to the checkAnswer method and return boolean (true or false)
        
        
        if trueOrFalse {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
       
        quizBrain.nextQuestion()
         Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
               
        
        
    }
    
    @objc func updateUI(){
        //show the question
        questionLabel.text = quizBrain.getQuestion()
        //change the title of button each time
        let title = quizBrain.buttonTitle()
        choice1.setTitle(title[0], for: .normal)
        choice2.setTitle(title[1], for: .normal)
        choice3.setTitle(title[2], for: .normal)
        //change button colour to default
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        //show updated progress bar
        progressBar.progress = quizBrain.getProgress()
        //show updated score
        scoreLabel.text = "Score:\(quizBrain.getScore())"

            }
    
}


