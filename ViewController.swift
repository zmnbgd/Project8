//
//  ViewController.swift
//  Project8
//
//  Created by Marko Zivanovic on 29.3.23..
//

import UIKit

class ViewController: UIViewController {
    
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = . white
        //more code to come!
        scoreLabel = UILabel ()
        scoreLabel.translatesAutoresizingMaskIntoConstraints=false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        view.addSubview(scoreLabel)
        
        cluesLabel = UILabel ()
        cluesLabel.translatesAutoresizingMaskIntoConstraints=false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        view.addSubview(cluesLabel)
        
        answersLabel = UILabel ()
        answersLabel.translatesAutoresizingMaskIntoConstraints=false
        answersLabel.font = UIFont.systemFont (ofSize: 24)
        answersLabel.text = "ANSWERS"
        answersLabel.textAlignment = .right
        answersLabel.numberOfLines = 0
        view.addSubview(answersLabel)
        
        currentAnswer = UITextField ()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        NSLayoutConstraint.activate([
        scoreLabel.topAnchor.constraint (equalTo:
        view.layoutMarginsGuide.topAnchor),
        scoreLabel.trailingAnchor.constraint (equalTo:
        view.layoutMarginsGuide.trailingAnchor),
        // more constraints to be added here
        
        cluesLabel.topAnchor.constraint (equalTo: scoreLabel.bottomAnchor),
        cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
        cluesLabel.widthAnchor.constraint (equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant:
        -100),
        answersLabel.topAnchor.constraint (equalTo: scoreLabel.bottomAnchor),
        answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
        answersLabel.widthAnchor.constraint(equalTo:
        view.layoutMarginsGuide.widthAnchor,multiplier: 0.4, constant: -100),
        answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
        
        currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //MARK: multiplier: 0.5) is half of the screen
        currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
        currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
        ])
        
        cluesLabel.backgroundColor = .red
        answersLabel.backgroundColor = . blue
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//19:55
