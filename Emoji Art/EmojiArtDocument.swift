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
    @Published private var emojiArt = EmojiArt()
    
    init() {
        emojiArt.addEmoji("🚲", at: .init(x: -200, y: -150), size: 200)
        emojiArt.addEmoji("🔥", at: .init(x: 250, y: 100), size: 80)
    }
    
    var emojis: [Emoji] {
        emojiArt.emojis
    }
    
    var background: URL? {
        emojiArt.background
    }
    
    // MARK: - Intent(s)
    func setBackground(_ url: URL?) {
//        print("Setting background URL to: \(String(describing: url))")
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
        return CGPoint(x: center.x + CGFloat(x), y: center.y - CGFloat(y))
    }
}
