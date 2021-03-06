//
//  EmojiBank.swift
//  MathForFun
//
//  Created by Sajan Shrestha on 6/21/20.
//  Copyright ÂĐ 2020 Sajan Shrestha. All rights reserved.
//


//"ðš": "Wolf",
//"ðĶĐ": "Flamingo",
//"ðĶ": "Butterfly",



import Foundation

struct EmojiBank {
    
    struct IdentifyingObjects {
        
        static var levelOneEmojis: [String: String] {
            EmojiBank.animalEmojis
        }
        
        static var levelTwoEmojis = [
            "ð": "Ladybug",
            "ð": "Ant",
            "ð·": "Spider",
            "ðĶ": "Owl",
            "ðĶ": "Duck",
            "ðĶ": "Parrot",
            "ðĶĒ": "Swan",
            "ð§": "Penguin",
            "ðĶ": "Eagle",
            "ðĶ": "Turkey",
            "ðĶ": "Peacock",
            "ð": "Bee",
            "ð": "Snail",
            "ðĶ": "Scorpion",
            "ðĶ": "Bat"
        ]
        
        
        static let levelThreeEmojis = [
                "ðĶ": "Crab",
        //        "ðĄ": "Blowfish",
                "ðŽ": "Dolphin",
                "ðģ": "Whale",
                "ðĶ": "Shark",
                "ð": "Crocodile",
                "ðĒ": "Turtle",
        //        "ð": "Octopus",
                "ð§": "Penguin",
                "ðĶ": "Squid",
                "ðĶ": "Shrimp",
                "ðĶ": "Lobster"
            ]
        
        static var levelFourEmojis: [String: String] {
            
            var emojis = [String: String]()
            
            vehicleEmojis.forEach { emojis[$0.key] = $0.value }
            electronicsEmojis.forEach { emojis[$0.key] = $0.value }

            return emojis
        }
        
        static let levelFiveEmojis = [
            
            "ðĶð·": "flag of Argentina",
            "ðēð―": "flag of Mexico",
            "ðĻðĶ": "flag of Canada",
            "ð§ðŠ": "flag of Belgium",
            "ð§ðđ": "flag of Bhutan",
            "ðŠðŽ": "flag of Egypt",
            "ðŦðŪ": "flag of Finland",
            "ðŽð·": "flag of Greece",
            "ðŪðģ": "flag of India",
            "ðŊðĩ": "flag of Japan",
            "ð°ðž": "flag of Kuwait",
            "ðąð·": "flag of Liberia",
            "ðēðĶ": "flag of Morocco",
            "ðšðļ": "flag of America",
            "ðšðū": "flag of Uruguay",
            "ðĐð°": "flag of Denmark",
            "ðģðĩ": "flag of Nepal"
        ]

        static let levelSixEmojis = [
            "âĪïļ": "red heart",
            "ð":"blue heart",
            "âŪïļ":"symbol of peace",
            "ð":"om symbol",
            "âŊïļ":"ying yang",
            "â":"cross mark",
            "â":"check mark",
            "ðš":"women's symbol",
            "ðđ":"men's symbol",
            "ðž":"baby's symbol",
            "ðĶ":"cinema symbol",
            "âŋïļ":"wheelchair symbol",
            "ð·":"no pedestrian symbol",
            "ðĩ":"no mobile phones symbol",
        ]
        
        static let levelSevenEmojis = [
            "âĒïļ": "symbol of radioactive",
            "âïļ":"no entry sign",
            "ðŊ":"no littering symbol",
            "ðļ":"children crossing symbol",
            "âŧïļ":"recycling symbol",
            "â":"cross mark",
            "ðĐðŋ":"flag of Algeria",
            "ð§ðĐ":"flag of Bangladesh",
            "ð§ðŽ":"flag of Bulgaria",
            "ðŦð·":"flag of France",
            "ðģ":"credit card",
            "ðĻ":"hammer",
            "ðŽ":"microscope",
            "ð":"pill",
            "ð§Ž":"DNA",
            "ðĶ ":"microbe",
            "ð§ŧ":"roll of paper",
            "ð":"key",
            "ð":"trolleybus",
            "ð":"tractor",
            "ðļ":"guitar",
            "ðĨ":"drum",
            "ð":"trophy",
            "ðĨ":"dumpling"
            
        ]
        
        
        static var emojis: [String: String] {
            
            var emojis = [String: String]()
            
            levelOneEmojis.forEach { emojis[$0.key] = $0.value }
            levelTwoEmojis.forEach { emojis[$0.key] = $0.value }
            levelThreeEmojis.forEach { emojis[$0.key] = $0.value }
            levelFourEmojis.forEach { emojis[$0.key] = $0.value }
            levelFiveEmojis.forEach { emojis[$0.key] = $0.value }
            levelSixEmojis.forEach { emojis[$0.key] = $0.value }

            return emojis
        }
        
        static func key(for value: String) -> String? {
            for (k, v) in emojis {
                if value.lowercased() == v.lowercased() {
                    return k
                }
            }
            return nil
        }

    }
    
    static let animalEmojis = [
        "ðķ": "Dog",
        "ðŧ": "Bear",
        "ðĶ": "Lion",
        "ðĶ": "Gorilla",
        "ðĒ": "Turtle",
        "ðĶ": "Giraffe",
        "ðĶ": "Zebra",
        "ð": "Cow",
        "ð": "Cat",
        "ð": "Tiger",
        "ðļ": "Frog",
        "ðŋ": "Squirrel",
        "ð": "Monkey",
        "ð": "Boar",
        "ðĶ§": "Orangutan",
        "ðŦ": "Camel",
        "ðĶ": "Deer",
        "ðĶĨ": "Sloth",
        "ð": "Mouse",
        "ð": "Rat",
        "ðĶ": "Hedgehog",
        "ðĶĶ": "Otter"
    ]
    
    static let fruitEmojis = [
        "ð": "Apple",
        "ð": "Pear",
        "ð": "Banana",
        "ð": "Watermelon",
        "ð": "Grape",
        "ð": "Pineapple",
        "ðĨ": "Kiwi"
    ]
    
    static let vegetableEmojis = [
        "ðĨĶ": "Brocolli",
        "ðĨŽ": "Kale",
        "ðĨ": "Cucumber",
        "ðĨ": "Carrot",
        "ð§": "Onion",
        "ðķ": "Chilli",
        "ð―": "Corn"
        //"ð": "Tomato",
        //"ðĨ": "Potato"
    ]
    
    static let fastFoodEmojis = [
        "ð­": "Hot Dog",
        "ð": "Burger",
        "ð": "Pizza",
        "ðŪ": "Taco",
        "ðŊ": "Burrito"
    ]
    
    static let vehicleEmojis = [
        "ð": "Taxi",
        "ð": "Car",
        "ð": "Helicopter",
        "ð": "Ambulance",
        "ð": "Police Car",
        "âïļ": "Plane",
        "ðē": "Bicycle",
        "ðĒ": "Ship",
        "ð": "Train",
        "ð": "Motorcycle",
        "ðĩ": "Scooter"
    ]
    
    static let electronicsEmojis = [
        "ðą": "Phone",
        "ðŧ": "Laptop",
        "ðĨ": "Screen",
        "ðĻ": "Printer",
        "ðē": "Computer Mouse",
        "ðū": "Floppy Disk",
        "ð": "CD",
        "ð·": "Camera",
        "âïļ": "Telephone",
        "ðŧ": "Radio"
    ]
    
    static let toolEmojis = [
        "ðĻ": "Hammer",
        "ðŠ": "Axe",
        "ð": "Key",
        "ð": "Paper Clip",
        "ð": "Thumb Pin",
        "ð": "Lock"
    ]
    
    static let sportsEmojis = [
        "â―ïļ": "Soocer Ball",
        "ð": "Basket Ball",
        "ð": "Football",
        "âūïļ": "Baseball",
        "ðū": "Tennis Ball",
        "ð": "Volley Ball",
        "ð": "Cricket"
    ]
    
    static var foodEmojis: [String: String] {
        
        var emojis = [String: String]()
        
        
        fruitEmojis.forEach { emojis[$0.key] = $0.value }
        vegetableEmojis.forEach { emojis[$0.key] = $0.value }
        fastFoodEmojis.forEach { emojis[$0.key] = $0.value }


        return emojis
    }
   
    
    static var emojis: [String: String] {
        
        var emojis = [String: String]()
        
        foodEmojis.forEach { emojis[$0.key] = $0.value }
        vehicleEmojis.forEach { emojis[$0.key] = $0.value }
        electronicsEmojis.forEach { emojis[$0.key] = $0.value }
        toolEmojis.forEach { emojis[$0.key] = $0.value }
        sportsEmojis.forEach { emojis[$0.key] = $0.value }

        return emojis
        
    }
}


struct AlphabetBank {
    
    static var alphabets: [String: String] {
        var result = [String: String]()
        let alphas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".compactMap { String($0) }
        alphas.forEach {
            result[$0] = $0
        }
        return result
    }
        
}


struct NumberBank {
    
    static var numbers: [String: String] {
        var result = [String: String]()
        let alphas = (0...9).compactMap { String($0) }
        alphas.forEach {
            result[$0] = $0
        }
        return result
    }
        
}
