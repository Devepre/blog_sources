//
//  SizeProvider.swift
//  RelativeViewSize
//
//  Created by Serhii Kyrylenko on 24.02.2021.
//

import SwiftUI

class SizeProvider: ObservableObject {
    struct GeometryProxyInfo {
        let size: CGSize
        let safeAreaInsets: EdgeInsets
        
        init(_ proxy: GeometryProxy?) {
            size = proxy?.size ?? .zero
            safeAreaInsets = proxy?.safeAreaInsets ?? .init()
        }
    }
    
    @Published var proxyInfo: GeometryProxyInfo = GeometryProxyInfo(nil)
    
    func update(with proxy: GeometryProxy) -> Self {
        self.proxyInfo = GeometryProxyInfo(proxy)
        return self
    }
}
