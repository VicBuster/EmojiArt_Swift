//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Vic.Z Ding on 2024/4/16.
//

import Foundation

struct EmojiArt {
    
    var background: URL?
    var emojis = [Emoji]()
    
    struct Emoji {
        
        let string: String
        var position: Position
        var size: Int
        
        struct Position {
            var x: Int
            var y: Int
        }
    }
}
