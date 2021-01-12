//
//  ViewController.swift
//  Roll 'em
//
//  Created by Daniel Caccia on 04/01/2021.
//  Copyright © 2021 Daniel Caccia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollButton.layer.cornerRadius = 10
        rollButton.clipsToBounds = true
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dicesArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
        
        leftDice.image = dicesArray.randomElement()
        rightDice.image = dicesArray.randomElement()
    }
    
}

