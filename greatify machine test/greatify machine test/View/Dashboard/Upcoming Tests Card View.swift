//
//  UpcomingTestsCardView.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct UpcomingTestsCardView: View {
    var subject: String
    var date: String
    var totalMark: String
    
    var body: some View {
        ZStack {
            Image("bgLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
                .clipped()
                .padding(.bottom, 150)
                .padding(.leading, 150)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(subject)
                        .semiBoldStyle(color: .primaryChalkGreen, size: 19.2)
                    
                    HStack {
                        Image("Calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 12, height: 12)
                            .clipped()
                        
                        Text(date)
                            .boldStyle(color: .primaryGreen600, size: 13.33)
                            .padding(.leading, 4) 
                    }
                    .padding(.top, 1)
                }
                .padding(.horizontal, 18)
                
                Spacer()
            }
            .background(Color.clear)
            .padding(.bottom, 120)
            
            VStack(alignment: .leading) {
                HStack {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.primaryGreen200, lineWidth: 2)
                        .fill(Color.primaryGreen50)
                        .frame(width: 78, height: 24)
                        .overlay(
                            Text("Upcoming")
                                .semiBoldStyle(color: .primaryGreen600, size: 11.11)
                                .foregroundColor(.white)
                        )
                        .padding(.top, 60)
                }
                
                Rectangle()
                    .foregroundColor(Color.neutral200)
                    .frame(width: .infinity, height: 1)
                    .padding(.top, 8)
                
                Text("Total marks")
                    .boldStyle(color: .neutral400, size: 11.11)
                    .padding(.top, 8)
                
                Text(totalMark)
                    .normalStyle(color: .primaryChalkGreen, size: 16)
                    .padding(.top, 1)
            }
            .padding(.top, 50)
            .padding(.horizontal, 18)
        }
        .frame(width: 276, height: 236)
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}

