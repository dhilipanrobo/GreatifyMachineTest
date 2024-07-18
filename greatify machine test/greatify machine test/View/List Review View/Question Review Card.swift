//
//  Question Review Card.swift
//  greatify machine test
//
//  Created by Apple on 18/07/24.
//

import SwiftUI

struct QuestionReviewCard: View {
    @State var qustionNo : String
    @State var qustion : String
    @State var ans : String
    var body: some View {
        VStack(alignment:.leading){
            Text("Question \(qustion)").normalStyle(color: .neutral400, size: 16)
            Text(qustionNo).semiBoldStyle(color: .primaryChalkGreen,size: 19.2).padding(.vertical,16)
            HStack{
                Text(ans).normalStyle(color: .black,size: 13.33).padding(.trailing,100).padding(.bottom,10)
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.primaryGreen600, lineWidth: 2)
                    .fill(Color.primaryGreen)
                    .frame( width: 43, height: 29)
                    .overlay(
                        Text("Edit")
                            .semiBoldStyle(color: .white, size: 11.11)
                            .foregroundColor(.white)
                    )
                
            }.frame(  height: 40)
            .padding(.trailing,20)
            
        }.frame(width: .infinity)
        .background(Color.neutral200)
    }
}

