//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var showCorrect: UILabel!
    @IBOutlet weak var showIncorrect: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionText.text = quizBrain.getQuestionText()
        progressBar.progress = 0.1
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        if userGotItRight {//if correct
            sender.backgroundColor = UIColor.green
        }else { //if incorrect
            sender.backgroundColor = UIColor.red
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:#selector( updateUI), userInfo: nil, repeats: false)
        quizBrain.nextQuestion()
        
    }
    
    @objc func updateUI(){
        questionText.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        showCorrect.text = "\(quizBrain.correctCounter)"
        showIncorrect.text = "\(quizBrain.incorrectCounter)"    }
    
}
    
    

