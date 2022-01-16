//
//  CircleImageShadow.swift
//  VK_Application_SwiftUI
//
//  Created by Сергей Чумовских  on 16.01.2022.
//

import SwiftUI

struct CircleImageShadow: ViewModifier {
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(color: .black, radius: shadowRadius)
    }
}



