//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    var questionNumber : Int = -1
    let allQuestions = QuestionBank()
    var totalQuestionCount : Int = 0
    var pickedAnswer : Bool = false
    var score : Int = 0
    

    @IBOutlet weak var progressWidth: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalQuestionCount = allQuestions.arrayOfQuestions.count

        nextQuestion()
        
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if ( sender.tag == 1 ) {
            pickedAnswer = true
        }
        else if ( sender.tag == 2 ) {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        nextQuestion()
       
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        
        progressLabel.text = "\(questionNumber) out of \(totalQuestionCount)"
        
        progressWidth.constant = ( view.frame.size.width / CGFloat(totalQuestionCount) )  * CGFloat(questionNumber + 1)
        
        print("progressBar width = \(progressBar.frame.size.width)")
        print("view.frame.size.width = \(view.frame.size.width)")
        print("totalQuestionCount = \(totalQuestionCount)")
        print("questionNumber + 1 = \(questionNumber + 1)")
    }
    

    func nextQuestion() {
        if (questionNumber + 1 < allQuestions.arrayOfQuestions.count){
            questionNumber += 1
        }else {
            let alert = UIAlertController(title: "Awesome", message: "You finished all the questions , do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()
                
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            }
        
        
        questionLabel.text = allQuestions.arrayOfQuestions[questionNumber].questionText
        updateUI()
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.arrayOfQuestions[questionNumber].answer
        if ( pickedAnswer == correctAnswer ) {
            ProgressHUD.showSuccess("You got it! Success !")
            score = score + 1
        }else {
             ProgressHUD.showError("You got Wrong!")
        }
       
    }
    
    
    func startOver() {
        questionNumber = -1
        nextQuestion()
       
    }
    

    
}
