//
//  AlertBar View.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct AlertBar: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke(Color.primaryGreen700,lineWidth: 2)
            .fill(Color.primaryGreen600)
            .frame(width: .infinity, height: 53)
            .padding()
            .overlay {
                HStack{
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.primaryGreen)
                        .frame(width: 47, height: 23)
                        .overlay(
                            Text("Today").semiBoldStyle(color: .white,size: 11.11)
                                .foregroundColor(.white)
                        )
                        .padding()
                        .padding(.leading,18)
                    Text("Aerodynamics Exam").semiBoldStyle(color: .white,size: 19.2)
                    Spacer()
                    HStack{
                        Image("Time Circle").resizable().frame(width: 17,height: 17)
                        Text("00:00:05").semiBoldStyle(color: .white,size: 16)
                    }
                    Spacer()
                    Text("READ INSTRUCTIONS").boldStyle(color: .white,size: 11.11).underline()
                    Button(action: {
                        print("View test")
                    }) {
                        Text("View test")
                            .semiBoldStyle(color: .primaryChalkGreen,size: 11)
                            .foregroundColor(.white)
                            .frame(width: 69,height: 29)
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    ZStack{
                        Circle().foregroundColor(.primaryGreen)
                            .frame(width: 24, height: 24)
                        Image("Close Square")
                            .resizable()
                            .frame(width: 6,height: 6)
                    }.padding(.trailing,36)
                }
            }
    }
}
