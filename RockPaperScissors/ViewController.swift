//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Sophia Shaw on 8/25/17.
//  Copyright © 2017 Soph Shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outcome : UILabel!
    @IBOutlet weak var challenge: UILabel!
    
    let choices = [
        "Rock",
        "Paper",
        "Scissors"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showResults (randomChoice: String) {
        let randomIndex = Int(arc4random_uniform(UInt32(3)))
        let computerChoice = choices[randomIndex]
        challenge.text = "\(randomChoice) vs \(computerChoice)"
        if randomChoice == computerChoice {
            outcome.text = "It's a tie"
        } else if randomChoice == "Paper" && computerChoice == "Scissors" {
            outcome.text = "You Lose"
        } else if randomChoice == "Scissors" && computerChoice == "Rock" {
            outcome.text = "You Lose"
        } else if randomChoice == "Rock" && computerChoice == "Paper" {
            outcome.text = "You Lose"
        } else {
            outcome.text = "You Win"
        }
    }
    
    @IBAction func rock (_ sender: UIButton){
       showResults(randomChoice: "Rock")
    }
    
    @IBAction func paper (_ sender: UIButton) {
       showResults(randomChoice: "Paper")
    }
    
    @IBAction func scissors (_ sender: UIButton) {
       showResults(randomChoice: "Scissors")
    }

}

