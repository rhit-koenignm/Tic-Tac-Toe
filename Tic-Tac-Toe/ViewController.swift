//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Natalie Koenig on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameStateLabel: UILabel!
    
    @IBOutlet var gameBoardButtons: [UIButton]!
    
    @IBOutlet weak var gameStateNavBar: UINavigationBar!
    
    @IBOutlet weak var gameBoardImage: UIImageView!
    var game = TicTacToeGame()
    
    var xImage: UIImage!
    var oImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.compact {
            gameBoardImage.image = #imageLiteral(resourceName: "iPhone_board.png")
            xImage = #imageLiteral(resourceName: "iPhone_X.png")
            oImage = #imageLiteral(resourceName: "iPhone_O.png")
        } else {
            gameBoardImage.image = #imageLiteral(resourceName: "iPad_board.png")
            xImage = #imageLiteral(resourceName: "iPad_X.png")
            oImage = #imageLiteral(resourceName: "iPad_O.png")
        }
    }

    @IBAction func pressedGameBoardButton(_ sender: Any) {
        let button = sender as! UIButton
        print(button.tag)
        game.pressedSquareAt(button.tag)
        updateView()
    }
    
    
    @IBAction func pressedNewGame(_ sender: Any) {
        print("New Game")
        game = TicTacToeGame()
        
        updateView()
    }
    
    func updateView() {
        print("Game state: \(game)")
        
        if(traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.compact) {
            // iPhone
            gameStateLabel.text = game.state.rawValue
        }
        else {
            // iPad
            gameStateNavBar.topItem?.title = game.state.rawValue
        }
        
        for button in gameBoardButtons {
            let buttonIndex = button.tag
            
            switch game.board[buttonIndex]{
            case .none:
                button.setImage(nil, for: UIControl.State.normal)
            case .x:
                button.setImage(xImage, for: .normal)
            case .o:
                button.setImage(oImage, for: .normal)
            }
        }
    }
    
}

