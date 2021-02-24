//
//  ContentView.swift
//  RelativeViewSize
//
//  Created by Serhii Kyrylenko on 24.02.2021.
//

import SwiftUI

struct ContentView: View {
    let sizeProvider: SizeProvider

    var body: some View {
        GeometryReader { proxy in
            HStack() {
                Text("Top view")
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
                SubView()
                    .environmentObject(sizeProvider.update(with: proxy))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sizeProvider: SizeProvider())
    }
}
