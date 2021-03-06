//
//  ResultVC.swift
//  BrainTeaser
//
//  Created by Andrew Foster on 3/8/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var correctAnswerLbl: UILabel!
    @IBOutlet weak var wrongAnswerLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var doneBtnConstraint: NSLayoutConstraint!
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctAnswerLbl.text = String(correctAnswer)
        wrongAnswerLbl.text = String(wrongAnswer)
        
        if correctAnswer >= 15 && correctAnswer < 20 && wrongAnswer <= 5 {
            resultLbl.text = "Not Bad!"
        } else if correctAnswer >= 20 && correctAnswer < 25 && wrongAnswer <= 5 {
            resultLbl.text = "Good!"
        } else if correctAnswer >= 25 && correctAnswer < 30 && wrongAnswer <= 5 {
            resultLbl.text = "Great!"
        } else if correctAnswer >= 30 && correctAnswer < 35 && wrongAnswer <= 5 {
            resultLbl.text = "Super!"
        } else if correctAnswer >= 35 && correctAnswer < 40 && wrongAnswer <= 5 {
            resultLbl.text = "Amazing!"
        } else if correctAnswer >= 40 && wrongAnswer <= 5 {
            resultLbl.text = "Mindblowing!"
        } else {
            resultLbl.text = "Results"
        }
        
        self.animEngine = AnimationEngine(constraints: [doneBtnConstraint])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.animEngine.animateOnScreen(delay: 2)
        
    }

    @IBAction func doneBtnPressed(_ sender: CustomButton) {
        
        correctAnswer = 0
        wrongAnswer = 0
        
    }
}
