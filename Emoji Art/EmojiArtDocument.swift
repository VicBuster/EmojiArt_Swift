//
//  EmojiArtDocument.swift
//  Emoji Art
//
//  Created by Vic.Z Ding on 2024/4/16.
//

import SwiftUI

// ViewModel
class EmojiArtDocument: ObservableObject {
    
    typealias Emoji = EmojiArt.Emoji
    private var emojiArt = EmojiArt()
    
    var emojis: [Emoji] {
        emojiArt.emojis
    }
    
    var backgorund: URL? {
        emojiArt.background
    }
    
    // MARK: - Intent(s)
    func setBackground(_ url: URL?) {
        emojiArt.background = url
    }
    
    func addEmoji(_ emoji: String, at position: Emoji.Position, size: CGFloat) {
        emojiArt.addEmoji(emoji, at: position, size: Int(size))
    }
    
    
}

extension EmojiArt.Emoji {
    var font: Font {
        Font.system(size: CGFloat(size))
    }
}

extension EmojiArt.Emoji.Position {
    // in cannot be used as an identifier here
    func `in`(_ geometry: GeometryProxy) -> CGPoint {
        let center = geometry.frame(in: .local).center
    }
}
