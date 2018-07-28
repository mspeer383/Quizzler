//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Speer, Michael on 7/25/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var arrayOfQuestions = [Question]()
    init(){
        arrayOfQuestions.append(Question(text:"Are you over 40" , correctAnswer: true))
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: false)
        
        // Add the Question to the list of questions
        arrayOfQuestions.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        arrayOfQuestions.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        arrayOfQuestions.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
    
}
