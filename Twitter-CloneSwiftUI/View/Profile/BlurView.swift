//
//  BlurView.swift
//  Twitter-CloneSwiftUI
//
//  Created by Aditya Ramadhan on 11/11/22.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        
    }
}
