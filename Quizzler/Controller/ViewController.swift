//
//  ViewController.swift
//  Quizzler
//
//  Created by Admin on 25.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trueButton.layer.cornerRadius = 20
        falseButton.layer.cornerRadius = 20
        updateUI()
    }
    @IBAction func answerQusTupped(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else { return }
        
        if quizBrain.checkAnswer(userAnswer){
            sender.backgroundColor = UIColor.green
            print("Right")
        }
        else{
            sender.backgroundColor = UIColor.red
            print("Wrong")
        }
        if quizBrain.questionNumber == quizBrain.quiz.count - 1{}
        else{
            quizBrain.questionNumber += 1
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateUI(){
        if quizBrain.questionNumber == quizBrain.quiz.count - 1{
            questionLabel.text = quizBrain.endQuestions
            progressView.progress = 1
        }
        else{
            questionLabel.text = quizBrain.getQuestionText()
            progressView.progress = quizBrain.getProgress()
        }
        updateButton()
    }
    
    func updateButton(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    
}

