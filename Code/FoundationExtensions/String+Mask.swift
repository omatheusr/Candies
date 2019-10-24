//
//  String+Mask.swift
//  Candies
//
//  Created by Matheus Rabelo on 10/10/18.
//  Copyright © 2018 Matheus Rabelo. All rights reserved.
//

import Foundation

public typealias Mask = [Int: Character]

public extension String {
    func asMask(joker: Character = "#") -> Mask {
        var mask: Mask = [:]
        for (i, char) in self.enumerated() {
            if char == joker { continue }
            mask[i] = char
        }
        return mask
    }
    func count(occurrencesOf char: Character = "#") -> Int {
        return self.filter({ $0 == char }).count
    }
    func apply(mask: Mask) -> String {
        var formattedText = self
        for i in mask.keys.sorted() {
            if i > formattedText.count { break }
            formattedText.insert(mask[i]!, at: formattedText.index(formattedText.startIndex, offsetBy: i))
        }
        return formattedText
    }
}
