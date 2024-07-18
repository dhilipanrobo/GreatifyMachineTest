//
//  List View Root view.swift
//  greatify machine test
//
//  Created by Apple on 18/07/24.
//

import SwiftUI

struct ListViewRootView: View {
    @State private var progress: Double = 0.5
    var reviewInfo : [ReviewInfo] = [
        ReviewInfo(icon: "Attempted", text: "Attempted Tests", count: "20", color: .primaryGreen600),
        ReviewInfo(icon: "Unattempted", text: "Unattempted Tests", count: "2", color: .secondaryOrange200),
        ReviewInfo(icon: "Reattempt", text: "Reattempted Tests", count: "5", color: .secondaryPurple200)
    ]
    var reviewQuestionModel : [ReviewQuestionModel] = [
        ReviewQuestionModel(question: "1", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
        ReviewQuestionModel(question: "2", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
        ReviewQuestionModel(question: "3", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
        ReviewQuestionModel(question: "4", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "5", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "6", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "7", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "8", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "9", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "10", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"), ReviewQuestionModel(question: "11", qustionNo: "Which of the following statements on the image is correctly relate to the shareholder’s equity?", ans:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat")
    ]
    var body: some View {
        
        VStack{
            //MARK: - Header View
            ReviewHeaderView()
            //MARK: - Info Car View
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing:-4){
                    ForEach(reviewInfo,id: \.self) { info in
                        ReviewInfoCarView(icon: info.icon, text: info.text, count: info.count, color: info.color)
                    }
                }
            }.background(Color.neutral200)
            
            HStack{
                Text("Your answers").semiBoldStyle(color: .primaryChalkGreen,size: 19.2)
                Spacer()
                VStack{
                    Text("List view").semiBoldStyle(color: .primaryGreen600,size: 19.2)
                    Rectangle()
                        .foregroundColor(.primaryGreen)
                        .frame(height: 2)
                }.frame(width: 146, height: 30)
                VStack{
                    Text("Grid view").semiBoldStyle(color: .neutral400,size: 19.2)
                    Rectangle()
                        .foregroundColor(.neutral200)
                        .frame(height: 2)
                }.frame(width: 146, height: 30)
            }.frame(height: 30)
                .padding(.leading,20)
                .padding(.top,36)
            //MARK: - Question Review Card
            ScrollView{
                ForEach(reviewQuestionModel,id:\.self) { data  in
                    QuestionReviewCard(qustionNo: data.qustionNo, qustion: data.question, ans: data.ans)
                    Rectangle()
                        .fill(Color.neutral400)
                        .frame(height: 1)
                        .padding(.top,16)
                        .padding(.leading,-15)
                }.padding(.leading,15)
            }
            Spacer()
        }.background(Color.neutral200)
    }
}
#Preview {
    ListViewRootView()
}

