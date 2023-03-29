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
        answersLabel.numberOfLines = 0
        view.addSubview(answersLabel)
        
        NSLayoutConstraint.activate([
        scoreLabel.topAnchor.constraint (equalTo:
        view.layoutMarginsGuide.topAnchor),
        scoreLabel.trailingAnchor.constraint (equalTo:
        view.layoutMarginsGuide.trailingAnchor),
        // more constraints to be added here
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

//11:34
