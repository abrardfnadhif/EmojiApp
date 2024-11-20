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
    @StateObject var paletteStore = PaletteStore(named: "Main")
    @StateObject var store2 = PaletteStore(named: "Alternate")
    @StateObject var store3 = PaletteStore(named: "Special")
    
    var body: some Scene {
        WindowGroup {
//            PaletteManager(stores: [paletteStore, store2, store3])
            EmojiArtDocumentView(document: defaultDocument)
                .environmentObject(paletteStore)
        }
    }
}
