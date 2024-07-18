//
//  TestCarView.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct TestCarView: View {
    @State var icon: String
    @State var text: String
    @State var count: String
    @State var color: Color

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(color, lineWidth: 2)
                .fill(Color.white)
                .frame(width: 179, height: 117)
                .padding()
                .overlay {
                    VStack(alignment: .leading) {
                        Image(icon)
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text(text)
                            .normalStyle(color: .neutral400, size: 11.11)
                            .padding(.top, 4)
                        Text(count)
                            .boldStyle(color: .primaryChalkGreen, size: 19.2)
                            .padding(.top, 16)
                    }
                    .padding(.leading, -64)
                }
        }
    }
}

