//
//  Alerts.swift
//  tic-tac-toe
//
//  Created by Sebastian Sanchis on 15/11/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(
        title: Text("You Win!"),
        message: Text("Congratulations, you beat the computer."),
        buttonTitle: Text("Play Again")
    )
    
    static let computerWin = AlertItem(
        title: Text("Computer Wins!"),
        message: Text("Better luck next time."),
        buttonTitle: Text("Try Again")
    )
    
    static let draw = AlertItem(
        title: Text("It's a Draw!"),
        message: Text("The game ended in a draw."),
        buttonTitle: Text("Play Again")
    )
}

