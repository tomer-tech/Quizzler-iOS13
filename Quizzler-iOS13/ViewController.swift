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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    let quiz = [
        Question(q: "In school, Albert Einstein failed most of the subjects, except for physics and math.", a: "True"),
        Question(q: "The first song ever sung in the space was 'Happy Birthday.'", a: "True"),
        Question(q: "The first country in the world to use postcards was the United States of America.", a: "False"),
           Question(q: "A male canary tends to have a better singing voice than a female canary.", a: "True"),
        Question(q: "Tea contains more caffeine than coffee and soda.", a: "False"),
        Question(q: "Dogs have an appendix.", a: "False" ),
        Question(q: "Bill Gates is the founder of Amazon." , a: "False"),
        Question(q: "Mice have more bones than humans.", a: "True"),
        Question(q: "John F. Kennedy is one of the four U.S. President who is on Mount Rushmore.", a: "False" ),
        Question(q: "The first product with a bar code was chewing gum." , a: "True"),
        Question(q: "Quidditch is the most popular sport among witches and wizards in “Harry Potter", a: "True" ),
        Question(q: "The Beatles is a famous rock band from Manchester, the United Kingdom.", a: "False"),
        Question(q: "Machu Picchu is an abandoned Incan citadel located in Chile." , a: "False"),
        Question(q: "The World War II began in 1939 when Germany invaded Poland." , a: "True")
    ]
    var questionNum = 0
    var correctCounter = 0
    var incorrectCounter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionText.text = quiz[questionNum].text
 
        updateUI()

        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNum].answer
        
       if userAnswer == actualAnswer {//if correct
           sender.backgroundColor = UIColor.green
           sender.titleLabel?.textColor = UIColor.black
            print("you are correct")
            correctCounter+=1
        }else { //if incorrect
            sender.backgroundColor = UIColor.red
            sender.titleLabel?.textColor = UIColor.white
                print("you are wrong")
                incorrectCounter+=1
            }
            nextQuestion()
            updateUI()
        }
        

        func nextQuestion(){

            if questionNum == (quiz.count-1) {
                print("end. you got \(correctCounter) right and \(incorrectCounter) wrong")
                questionNum = 0
                correctCounter = 0
                incorrectCounter = 0
            }
            else {print("go to next question")
                questionNum+=1}

        }
    
    func updateUI(){
        questionText.text = quiz[questionNum].text
        
        trueButton.backgroundColor = UIColor.clear
        trueButton.titleLabel?.textColor = UIColor.white
        falseButton.backgroundColor = UIColor.clear
        falseButton.titleLabel?.textColor = UIColor.white
    }
    
    }
    
    

