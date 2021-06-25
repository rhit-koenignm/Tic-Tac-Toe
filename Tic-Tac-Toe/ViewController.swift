//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Natalie Koenig on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameStateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedGameBoardButton(_ sender: Any) {
    }
    
    @IBAction func pressedNewGame(_ sender: Any) {
        print("New Game")
    }
    
}

