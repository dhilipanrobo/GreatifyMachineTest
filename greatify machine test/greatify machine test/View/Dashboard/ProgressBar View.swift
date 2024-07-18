//
//  ProgressBar.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct ProgressBar: View {
    @State var progressValue: CGFloat = 0.50
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundColor(Color.gray.opacity(0.2))
                        .frame(width: geometry.size.width - 20, height: 30)
                        .cornerRadius(5.0)
                    
                    Rectangle()
                        .foregroundColor(progressValue >= 50 ? .primaryGreen : .secondaryOrange500)
                        .frame(width: min(self.progressValue / 100 * geometry.size.width, geometry.size.width - 20), height: 30) 
                        .cornerRadius(5.0)
                        .overlay {
                            Text("\(Int(progressValue))%")
                                .boldStyle(color: progressValue >= 50 ? .primaryChalkGreen : .white, size: 11.11)
                                .padding(.leading, progressValue / 100 * geometry.size.width - 50)
                        }
                }
            }
            .frame(height: 10)
        }
        .padding()
    }
}

func stringToCGFloat(_ string: String) -> CGFloat? {
    if let doubleValue = Double(string) {
        return CGFloat(doubleValue)
    }
    return nil
}

