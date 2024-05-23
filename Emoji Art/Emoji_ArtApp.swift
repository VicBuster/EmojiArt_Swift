//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Vic.Z Ding on 2024/4/16.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
