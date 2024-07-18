//
//  Helper File.swift
//  greatify machine test
//
//  Created by Apple on 16/07/24.
//

import Foundation
import SwiftUI

extension Text {
    func boldStyle(color: Color = .black,size : CGFloat = 18.0) -> Text {
        self.font(.custom("Yellix-Bold", size: size))
            .foregroundColor(color)
    }
    
    func semiBoldStyle(color: Color = .black,size : CGFloat = 18.0) -> Text {
        self.font(.custom("Yellix-SemiBold", size: size))
            .foregroundColor(color)
    }
    
    func mediumStyle(color: Color = .black,size:CGFloat) -> Text {
        self.font(.custom("Yellix-Medium", size: size))
            .foregroundColor(color)
    }
    func normalStyle(color: Color = .black,size:CGFloat) -> Text {
        self.font(.custom("Yellix-Regular", size: size))
            .foregroundColor(color)
    }
    func semiBoldResizablesemiBold(minSize: CGFloat, maxSize: CGFloat, color: Color) -> some View {
            self
                .font(.custom("Yellix-SemiBold", size: maxSize))
                .foregroundColor(color)
                .minimumScaleFactor(minSize / maxSize)
                .lineLimit(1)
        }
    
}
extension TextField {
    func customTextFieldStyle(fontSize: CGFloat, textColor: Color) -> some View {
        self.font(.custom("Yellix-Regular", size: fontSize))
            .foregroundColor(textColor)
    }
}
