//
//  UIService.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import Foundation
import SwiftUI

extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
    
    func saveSize(in size: Binding<CGSize>) -> some View {
        modifier(SizeCalculator(size: size))
    }
}

//Для определения размера объекта по w и h
struct SizeCalculator: ViewModifier {
    @Binding var size: CGSize
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    // мы просто хотим, чтобы считыватель сработал, поэтому давайте используем пустой цвет
                    Color.clear
                        .onAppear {
                            size = proxy.size
                        }
                }
            )
    }
}
