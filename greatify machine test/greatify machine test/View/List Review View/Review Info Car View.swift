//
//  Review Info Car View.swift
//  greatify machine test
//
//  Created by Apple on 18/07/24.
//

import SwiftUI

struct ReviewInfoCarView: View {
    @State var icon: String
    @State var text: String
    @State var count: String
    @State var color: Color

    var body: some View {
    
            RoundedRectangle(cornerRadius: 16)
                .stroke(color, lineWidth: 2)
                .fill(Color.white)
                .frame(width: 310, height: 82)
                .padding()
                .overlay {
                    HStack{
                        VStack(alignment: .leading) {
                            Image(icon)
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text(text)
                                .normalStyle(color: .neutral400, size: 11.11)
                                .padding(.top, 4)
                           
                        }.padding(.leading,36)
                        Spacer()
                        HStack{
                            Text(count)
                                .semiBoldStyle(color: .primaryChalkGreen, size: 27.65)
                            + Text("/45")
                                .semiBoldStyle(color: .neutral400, size: 19.2)
                        }.padding(.trailing,18)
                    }.frame(width: 310)
                }
    }
}



