//
//  ViewController.swift
//  HighLow
//
//  Created by Cliford Charuka
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    // declaring variables values set to 0
    var score = 0
    var currentCardNumber = 0
    var previousCardNumber = 0
    var recordData =  0
    var highScore = 0
  //  var incorrectGuess = 0
//    var correctGuess = 0
    
    @IBAction func touchHigh(_ sender: UIButton) {
        randomCard()
    
        if currentCardNumber > previousCardNumber {
            
           increaseScore() // currentCard greater than previousCard increaseScore
        } else if currentCardNumber < previousCardNumber {
            
            decreaseScore()// else if high is less than previousCard return 0
        } else if score == 0 && currentCardNumber > previousCardNumber{
            
            score = 1
                    //  gameOver()  // return gameover
        }
        //scoreLabel.text = String(score)
    }
   
    @IBAction func touchLow(_ sender: UIButton) {
        randomCard()
     //   if currentCardNumber > previousCardNumber {
          //  score = 0
         if currentCardNumber < previousCardNumber {
            increaseScore()  //currentCard less than previousCard increaseScore
         } else if currentCardNumber > previousCardNumber {
            decreaseScore()  // else if guess is wrong decreaseScore
         }   else if score == 0 && currentCardNumber > previousCardNumber {
        
            score = 1
    
          // gameOver()
         }
         
     
      //  scoreLabel.text = String(score)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        randomCard()
    }
    
    
    // Randomize numbers
    func randomCard() {
        previousCardNumber = currentCardNumber
        
        let suitNumber = Int.random(in: 1...4)
        currentCardNumber = Int.random(in: 1...13)
        
        let cardName = "card_\(suitNumber)_\(currentCardNumber)"
        
        imgView.image = UIImage(named: cardName)

    }
    
    func gameOver() {
    score = 0
  }

    
    func decreaseScore() {
        score = score - 2
        
        scoreLabel.text = " Score: " + String(score)
    }  // decreasing scores if guessed wrong
    
    
    func increaseScore () {
        score = score + 2
  
        scoreLabel.text = " Score: " + String (score)
        
        func increaseScore1() {
            score = score + 1
            
            scoreLabel.text = " Score: " + String(score)
        }
    } // increasing score if guessed right
    

  
    
  /*
    func highscore() {
        guard gameMode == 0, let score = Int(scoreLabel.text!), score > recordData else { return }
        recordData = score
        UserDefaults.standard.set(recordData, forKey: "Record")
        highScoreLabel.text = String(recordData)
 */
    }
    
    


