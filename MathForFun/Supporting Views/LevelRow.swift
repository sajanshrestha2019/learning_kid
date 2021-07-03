//
//  LevelRow.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 8/16/20.
//  Copyright © 2020 Sajan Shrestha. All rights reserved.
//

import SwiftUI

struct LevelRow: View {
    
    var level: Int
    
    private let levelImages = ["Ant", "Bee", "Cow", "Dog", "Elephant", "Fox", "Giraffe", "Horse", "Iguana", "Jaguar", "Koala", "Lion", "Monkey", "Piggy", "Kitty"]
    
    var body: some View {
        
        HStack {
            
            Image(levelImages[level - 1])
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
            
            
            Text("Level \(levelImages[level - 1])")
                .font(Font.custom("Noteworthy", size: 24))
                .padding(.horizontal)
        }
    }
}

struct LevelRow_Previews: PreviewProvider {
    static var previews: some View {
        LevelRow(level: 2)
    }
}
