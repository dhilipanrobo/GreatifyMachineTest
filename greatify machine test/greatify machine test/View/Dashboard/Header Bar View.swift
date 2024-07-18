//
//  Header_Bar_View.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct Header_Bar_View: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @Binding var isNavigation: Bool
    
    var body: some View {
        HStack {
            Image("avather")
                .resizable()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Amity University")
                    .mediumStyle(color: .primaryChalkGreen, size: 16.00)
                Text("HCCOLLEGE0010")
                    .semiBoldStyle(color: .primaryGreen, size: 12.00)
            }
            
            VerticalDivider()
                .frame(height: 37)
            
            Image("amityLogo")
                .resizable()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Amity University")
                    .mediumStyle(color: .primaryChalkGreen, size: 16.00)
                Text("HCCOLLEGE0010")
                    .semiBoldStyle(color: .primaryGreen, size: 12.00)
            }
            
            Spacer()
            
            SearchBar(text: $searchText, isSearching: $isSearching)
            Button(action: {
                isNavigation = true
            }, label: {
                ZStack {
                    Circle()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.white)
                    
                    Image(systemName: "bell")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 16, height: 16)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .foregroundColor(.secondaryOrange500)
                        .frame(width: 5, height: 5) 
                        .offset(x: 5, y: -5)
                }
            })
        }
    }
}

