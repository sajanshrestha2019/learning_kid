//
//  QuestionText.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 6/24/20.
//  Copyright © 2020 Sajan Shrestha. All rights reserved.
//

import SwiftUI


struct LearningKidText: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom(LearningKid.fontFamily, size: textSize))
            .padding(padding)
            .animation(nil)
    }
    
    // MARK:- CONSTANTS
    private let textSize: CGFloat = UIScreen.main.bounds.width / 16
    private let padding: CGFloat = 20
    
}
