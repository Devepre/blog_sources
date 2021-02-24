//
//  RelativeViewSizeApp.swift
//  RelativeViewSize
//
//  Created by Serhii Kyrylenko on 24.02.2021.
//

import SwiftUI

@main
struct RelativeViewSizeApp: App {
    let sizeProvider: SizeProvider = SizeProvider()
    
    var body: some Scene {
        WindowGroup {
            ContentView(sizeProvider: sizeProvider)
        }
    }
}
