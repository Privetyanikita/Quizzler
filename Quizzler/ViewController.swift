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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func ansverQusTupped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        print(buttonTitle)
    }
    

}

