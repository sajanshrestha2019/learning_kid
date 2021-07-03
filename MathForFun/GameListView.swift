//
//  PreKHomeView.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 6/4/20.
//  Copyright © 2020 Sajan Shrestha. All rights reserved.
//

import SwiftUI

struct GameListView: View {
    
    var gameList: GameList
    private let columns = [ GridItem(.adaptive(minimum: 160)) ]
        
    @State private var showSettingsView = false
    @State private var username = UserDefaults.getUserName() ?? ""
        
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(gameList.games) { game in
                        NavigationLink(destination: LevelView(for: game)) {
                            GameRow(game: game)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarTitle(Text("\(username)'s Games"))
            .navigationBarItems(
                trailing:
                ImageButton(named: "pencil.circle") {
                    self.showSettingsView = true
                }
                .font(.title)
                .foregroundColor(.blue)

            )
            .sheet(isPresented: $showSettingsView) {
                SettingsView(username: $username, showSettingsView: $showSettingsView)
            }
            
            Text("Select a Game")
                .font(.largeTitle)
        }
    }
}

struct GameRow: View {
    
    let game: GameList.Game
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.gray, lineWidth: lineWidth)
            
            LottieView(filename: game.animationFileName)
                .frame(height: height)
            
            Text(game.name)
                .font(Font.custom(LearningKid.fontFamily, size: textSize))
                .bold()
                .offset(y: textOffsetFactor)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                .foregroundColor(.gray)
        }
    }
    
    // MARK: CONSTANTS
    private let cornerRadius: CGFloat = 4
    private let lineWidth: CGFloat = 2
    private let height: CGFloat = UIScreen.main.bounds.height / 3
    private let rectangleOpacity = 0.3
    private let textSize: CGFloat = 20
    private var textOffsetFactor: CGFloat { height / 2.1 }
}



