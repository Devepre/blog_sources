//
//  SubView.swift
//  RelativeViewSize
//
//  Created by Serhii Kyrylenko on 24.02.2021.
//

import SwiftUI

struct SubView: View {
    @EnvironmentObject var viewData: SizeProvider
    let multiplier: CGFloat = 0.6
    
    var body: some View {
        Rectangle()
            .foregroundColor(.secondary)
            .overlay(Text("Details View width:\n\(viewData.proxyInfo.size.width)"))
            .frame(width: viewData.proxyInfo.size.width * multiplier)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {
            SubView()
                .environmentObject(SizeProvider().update(with: $0))
        }
    }
}
