//
//  ContentView.swift
//  Popover
//
//  Created by Serhii Kyrylenko on 01.08.2023.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var isPresenting: Bool = false
    @State private var popoverViewSize: CGSize = .zero
    
    var body: some View {
        NavigationView {
            sourceView
                .overlay {
                    if isPresenting {
                        popoverView
                            .frame(width: popoverViewSize.width, height: popoverViewSize.height)
                            .position(x: popoverViewSize.width / 2, y: -16)
                    }
                }
        }
        .bindViewSize(to: $popoverViewSize, isActive: isPresenting) {
            popoverView
        }
    }
    
    private var sourceView: some View {
        Button("Toggle popover") {
            isPresenting.toggle()
        }
    }
    
    private var popoverView: some View {
        Text("Popover content")
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
