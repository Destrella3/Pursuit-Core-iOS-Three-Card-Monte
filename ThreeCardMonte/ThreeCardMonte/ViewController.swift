//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    @IBOutlet weak var winLose: UILabel!
    
   
    @IBAction func touchCard(_ sender: UIButton) {
        var cardArray = [UIImage.init(named: "kingCard"), UIImage.init(named: "threeCard"), UIImage.init(named: "threeCard")]
         cardArray = cardArray.shuffled()
        
        switch sender.tag {
        case 0:
            if cardArray[0] == UIImage.init(named: "kingCard") {
             firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                winLose.text = "You Win"
            } else {
                firstCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLose.text = "You Lose"
            }
            endCard()
           
        case 1:
            if cardArray[1] == UIImage.init(named: "kingCard") {
               secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                winLose.text = "You Win"
            } else {
                secondCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLose.text = "You Lose"
            }
            endCard()
           
        case 2:
            if cardArray[2] == UIImage.init(named: "kingCard") {
               thirdCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                winLose.text = "You Win"
            } else {
                thirdCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLose.text = "You Lose"
            }
            endCard()
           
        default:
        print("invalid tag")
            
        }
        for cards in 0..<cardArray.count {
            if cardArray[cards] == UIImage(named: "kingCard") {
                if cards == 0 {
                    firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
                 if cards == 1 {
                    secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
                 if cards == 2 {
                    thirdCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            }
            
        }

    }
    

@IBAction func playAgain(_ sender: UIButton) {
    
    winLose.text = "Pick a Card"
        
        firstCard.isEnabled = true
        secondCard.isEnabled = true
        thirdCard.isEnabled = true
    
    firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }
    
    
    
func endCard () {
    firstCard.isEnabled = false
    secondCard.isEnabled = false
    thirdCard.isEnabled = false

}

  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
  }
}

