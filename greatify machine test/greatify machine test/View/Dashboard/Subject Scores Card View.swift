//
//  SubjectScoresCardView.swift
//  greatify machine test
//
//  Created by Apple on 17/07/24.
//

import SwiftUI

struct SubjectScoresCardView: View {
    @Binding var showPicker: Bool
    @Binding var selectedValue: String
    @State var subjectTestMark: [SubjectTestMark]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack {
                            Text("Subject scores")
                        }
                        Spacer()
                        Button(action: {
                            showPicker.toggle()
                        }) {
                            HStack {
                                Text(selectedValue)
                                    .semiBoldStyle(color: .neutral500, size: 11.11)
                                    .foregroundColor(.neutral500)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                Image("down arrow")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 6, height: 3)
                                    .clipped()
                                    .padding(.trailing, 16)
                            }
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.neutral200, lineWidth: 1)
                                .frame(width: 80, height: 40)
                        )
                    }
                }
            }
            .padding(.horizontal, 18)
            .padding(.top, 18)
            
            HStack {
                Text("My total score in each subject")
                    .normalStyle(color: .neutral400, size: 13.33)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            .padding(.horizontal, 18)
            .padding(.top, -8)
            
            Divider()
                .background(Color.neutral200)
                .padding(.top, 16)
            
            ScrollView {
                ForEach($subjectTestMark, id: \.self) { testMark in
                    SubjectMarkCarView(subject: testMark.subject, mark: testMark.mark)
                        .padding(.horizontal, 18)
                        .padding(.top, 8)
                    Divider()
                        .background(Color.neutral200)
                        .padding(.top, 8)
                        .padding(.horizontal, 16)
                }
            }
            Spacer()
        }
        .frame(width: 497, height: 286)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct SubjectMarkCarView: View {
    @Binding var subject: String
    @Binding var mark: String
    
    var body: some View {
        HStack {
            Text(subject)
                .normalStyle(color: .primaryChalkGreen, size: 11.11)
            Spacer()
            Text(mark)
                .semiBoldStyle(color: .gray, size: 19.2)
            + Text("/100 marks")
                .normalStyle(color: .neutral400, size: 11.11)
        }
    }
}

