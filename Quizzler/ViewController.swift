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
    
    
    let brainSt = Question(q: <#T##String#>, a: <#T##String#>)
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appdateUI()
    }
    @IBAction func answerQusTupped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        switch buttonTitle {
        case "True":
            if brainSt.checkAnswer(answer: true, questionNumber: questionNumber) == true{
                sender.backgroundColor = UIColor.green
            }
            else{
                sender.backgroundColor = UIColor.red
            }
        case "False":
            if brainSt.checkAnswer(answer: false, questionNumber: questionNumber) == false{
                sender.backgroundColor = UIColor.green
            }
            else{
                sender.backgroundColor = UIColor.red
            }
        default:
            break
        }
        if questionNumber == brainSt.quizBrain.count-1{
            appdateUI(text: "End of the quiz")
        }
        else{
            questionNumber += 1
        }
        
        print(buttonTitle)
    }
    
    private func appdateUI(){
        questionLabel.text = brainSt.quizBrain[questionNumber]
        progressView.progress = Float(questionNumber) / Float(brainSt.quizBrain.count)
    }
    
    private func appdateUI(text: String){
        questionLabel.text = text
        progressView.progress = Float(questionNumber) / Float(brainSt.quizBrain.count)
        updateButton()
    }
    func updateButton(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }


}

