//
//  GameView.swift
//  tic-tac-toe
//
//  Created by Sebastian Sanchis on 14/11/2023.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ContainerRelativeShape()
                .fill(Color.mint.gradient)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 24) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Circle()
                                .stroke(Color.white, lineWidth: 3)
                                .frame(width: 96)
                                
                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            viewModel.processPlayerMove(for: i)
                        }
                    }
                }
                Spacer()
            }
            .disabled(viewModel.isGameboardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem, content: { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: .default(alertItem.buttonTitle, action: { viewModel.resetGame() }))
            })
        }
    }
}

#Preview {
    GameView()
}
