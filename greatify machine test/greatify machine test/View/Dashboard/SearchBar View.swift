//
//  SearchBar.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            Image("Magnifying-Glass--Streamline-Flex")
                .resizable()
                .scaledToFill()
                .frame(width: 16, height: 16)
                .padding(.leading, 16)
            
            TextField("Search", text: $text)
                .customTextFieldStyle(fontSize: 13.33, textColor: .neutral300)
                .padding(.leading, 8)
            
            Button(action: {
                self.text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .opacity(text.isEmpty ? 0 : 1)
            }
            .padding()
            .foregroundColor(.secondary)
        }
        .frame(maxWidth: 232, maxHeight: 36)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.neutral200, lineWidth: 1)
        )
        .padding(.horizontal)
        .onTapGesture {
            self.isSearching = true
        }
    }
}

