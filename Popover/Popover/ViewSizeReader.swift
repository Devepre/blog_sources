//
//  ViewSizeReader.swift
//  Popover
//
//  Created by Serhii Kyrylenko on 01.08.2023.
//

import SwiftUI

extension View {
    func bindViewSize<V: View>(to size: Binding<CGSize>, isActive: Bool, target view: @escaping () -> V) -> some View {
        modifier(
            ViewSizeReader(size: size, isActive: isActive, view: view)
        )
    }
}

struct ViewSizeReader<V: View>: ViewModifier {
    let size: Binding<CGSize>
    let isActive: Bool
    let view: () -> V
    
    func body(content: Content) -> some View {
        content.overlay {
            if isActive {
                view()
                    .background(
                        GeometryReader { proxy in
                            Color.clear.onAppear {
                                size.wrappedValue = proxy.size
                            }
                        }
                    )
                    .hidden()
            }
        }
    }
}
