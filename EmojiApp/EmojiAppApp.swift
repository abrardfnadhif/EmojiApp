//
//  EmojiAppApp.swift
//  EmojiApp
//
//  Created by Abrar Dwi Fairuz Nadhif on 06/11/24.
//

import SwiftUI

@main
struct EmojiAppApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
        }
    }
}
