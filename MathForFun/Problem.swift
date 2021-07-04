//
//  Problem.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 7/20/20.
//  Copyright © 2020 Sajan Shrestha. All rights reserved.
//

import Foundation

protocol Problem {
    var rightAnswer: String { get }
}


protocol MyProblem {
    associatedtype Value

    var answer: Value { get }
    var options: [Value] { get }
    var questionText: String { get }
}
