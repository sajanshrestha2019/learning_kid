//
//  IdentifyingShapeProblem.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 6/6/20.
//  Copyright © 2020 Sajan Shrestha. All rights reserved.
//

import Foundation
import UIKit


struct ShapeProblem: Problem {
    
    var shapeImageName: String
    
    var rightAnswer: String { shapeImageName.capitalized }
    
    var options: [String]
    
    static func getProblems(count: Int, level: Int) -> [ShapeProblem] {
        
        
        let shapesImageNames = getShapeImageNames(for: level)
        
        var problems = [ShapeProblem]()
               
        for shapeImageName in shapesImageNames {
            let options = ShapeProblem.getShapeOptions(for: shapeImageName)
            let identifyingShapeProblem = ShapeProblem(shapeImageName: shapeImageName, options: options)
            problems.append(identifyingShapeProblem)
        }
        
        return problems
    }
    
    private static func getShapeImageNames(for level: Int) -> [String] {
        switch level {
        case 1:
            return levelOneShapes
        case 2:
            return levelTwoShapes
        case 3:
            return levelThreeShapes
        default:
            return []
        }
    }
    
    private static func getShapeOptions(for shapeName: String) -> [String] {
        
        var options = [String]()
        
        var shapeNames = ["circle", "square", "triangle", "rectangle", "oval", "diamond", "star", "hexagon"].map { $0.capitalized }
        
        options.append(shapeName.capitalized)
        
        shapeNames.removeAll { $0 == shapeName.capitalized }
        
        options.append(contentsOf: shapeNames.randomElements(3))
        
        options.shuffle()
        
        return options
        
    }
    
    private static let levelOneShapes = ["circle", "square", "triangle", "rectangle","circle", "square", "triangle", "rectangle", "circle", "square"]
    
    private static var levelTwoShapes: [String] {
        ["circle", "oval", "square", "diamond", "triangle", "star", "rectangle", "hexagon", "diamond", "oval"]
    }
    
    private static var levelThreeShapes: [String] {
         ["pentagon", "circle", "cone", "oval", "octagon", "crescent", "diamond", "cube", "oval", "triangle"]
    }
    
}
