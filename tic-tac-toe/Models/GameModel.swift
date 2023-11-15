//
//  GameModel.swift
//  tic-tac-toe
//
//  Created by Sebastian Sanchis on 15/11/2023.
//

import Foundation

enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "pawprint" : "pawprint.fill"
    }
}
