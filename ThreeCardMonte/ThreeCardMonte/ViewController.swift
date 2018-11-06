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
    
    @IBAction func touchCard(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            firstCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        case 1:
            secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 2:
           thirdCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        default:
        print("invalid tag")
        }
    }
    

  override func viewDidLoad() {
    super.viewDidLoad()
   
    firstCard.isEnabled = true
    secondCard.isEnabled = true
    thirdCard.isEnabled = true
    
  }


}

