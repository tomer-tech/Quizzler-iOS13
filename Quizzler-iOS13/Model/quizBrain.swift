//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Ankhe Tomer on 2/17/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
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
    
    
    mutating func checkAnswer(_ userAnswer: String)->Bool{
        print(userAnswer)
        if userAnswer == quiz[questionNum].answer{
            correctCounter+=1
            return true
            //user got it right
        } else {incorrectCounter+=1
            return false }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNum].text
    }
    
    func getProgress()-> Float{
        let progress = Float(questionNum) / Float(quiz.count)
        return progress }
    
    mutating func nextQuestion(){
        if questionNum+1 < (quiz.count) {
            questionNum+=1
            print("go to next question")}
        else {print("This is the end")}
    }
}
