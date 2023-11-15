//
//  ContentView.swift
//  tic-tac-toe
//
//  Created by Sebastian Sanchis on 14/11/2023.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Circle()
                                .foregroundColor(.mint)
                            
                            Circle()
                                .stroke(Color.white, lineWidth: 3)
                                .frame(width: 96)
                                
                                
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .background(.mint)
        }
    }
}

#Preview {
    ContentView()
}
