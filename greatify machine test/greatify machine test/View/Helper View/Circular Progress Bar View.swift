//
//  Circular Progress Bar View.swift
//  greatify machine test
//
//  Created by Apple on 18/07/24.
//

import SwiftUI

struct CircularProgressBar: View {
    @Binding var progress: Double // progress value between 0.0 and 1.0
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8.0)
                .opacity(0.3)
                .foregroundColor(Color.primaryChalk800)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.secondaryOrange500)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: progress)
        }
        .frame(width: 40, height: 40)
        .padding(40)
    }
}

