//
//  Review Header View.swift
//  greatify machine test
//
//  Created by Apple on 18/07/24.
//

import SwiftUI

import SwiftUI

struct ReviewHeaderView: View {
    
    @State private var progress: Double = 0.5
    var body: some View {
        HStack{
            HStack{
                Image("amityLogo")
                    .resizable()
                    .frame(width: 36, height: 36)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Amity University")
                        .mediumStyle(color: .white, size: 16.00)
                    Text("HCCOLLEGE0010")
                        .semiBoldStyle(color: .primaryGreen, size: 12.00)
                }
            }.padding(.horizontal,18)
            
            VerticalDivider()
                .frame(height: 37)
            HStack{
                
                Image("avather")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .padding(.leading,18)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Amity University")
                        .mediumStyle(color: .white, size: 16.00)
                    Text("HCCOLLEGE0010")
                        .semiBoldStyle(color: .primaryGreen, size: 12.00)
                }
            }
            Spacer()
            HStack{
                Text("Aerodynamics")
                    .semiBoldStyle(color: .white,size: 19.2)
                Image("InformationCircle").frame(width: 16,height: 16)
            }
            Spacer()
            HStack{
                CircularProgressBar(progress: $progress)
                VStack(alignment:.leading){
                    Text("Time left").boldStyle(color:.primaryGreen,size: 13.33)
                    Text("0:18:32").semiBoldStyle(color:.white,size:23.04)
                }.padding(.leading,-30)
            }.padding(.trailing,18)
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.primaryGreen600, lineWidth: 2)
                .fill(Color.primaryGreen)
                .frame( height: 43)
                .overlay(
                    Text("Submit exam")
                        .semiBoldStyle(color: .white, size: 16)
                        .foregroundColor(.white)
                )
                .padding(.trailing,18)
        }.frame(height: 99)
            .background(Color.primaryChalkGreen)
        
    }
}


