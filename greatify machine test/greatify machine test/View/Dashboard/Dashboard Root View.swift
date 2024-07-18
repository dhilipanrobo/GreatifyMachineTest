//
//  Dashboard View.swift
//  greatify machine test
//
//  Created by Apple on 16/07/24.
//

import SwiftUI


struct DashboardRootView: View {
    @State private var searchText = ""
    @State private var isSearching = false
    @State private var showPicker = false
    @State private var showPickerYear = false
    @State private var selectedValue = "Sem 1"
    @State private var selectedValueYear = "First Year"
    @State private var isNavigation: Bool = false
    
    var testCards : [TestCard] = [
        TestCard(icon: "Attempted", text: "Attempted Tests", count: "20", color: .neutral200),
        TestCard(icon: "Unattempted", text: "Unattempted Tests", count: "2", color: .neutral200),
        TestCard(icon: "Reattempt", text: "Reattempted Tests", count: "5", color: .neutral200),
        TestCard(icon: "Check-Square--Streamline-Flex", text: "Passed Tests", count: "15", color: .neutral200),
        TestCard(icon: "Unattempted", text: "Failed Tests", count: "3", color: .neutral200)]
    
    var sems = ["Sem 1","sem 2","sem 3","sem 4"]
    
    var years = ["First Year","Second Year","Third Year","Fourth Year"]
    
    var subjectTestMark :[SubjectTestMark] = [
        SubjectTestMark(subject: "Data structure & Engineering", mark: "78", totalMark: "100"),
        SubjectTestMark(subject: "Physiotherapy", mark: "80", totalMark: "100"),
        SubjectTestMark(subject: "Organic Chemistry", mark: "90", totalMark: "100"),
        SubjectTestMark(subject: "Computer science", mark: "58", totalMark: "100"),
        SubjectTestMark(subject: "Robotics engineering", mark: "68", totalMark: "100")
    ]
    
    var semesterResult  :[SemesterResult] = [
        SemesterResult(seme: "01", grade: "A", percentage: "80"),
        SemesterResult(seme: "02", grade: "B", percentage: "30"),
        SemesterResult(seme: "03", grade: "C", percentage: "50"),
        SemesterResult(seme: "04", grade: "D", percentage: "70")
    ]
    
    var upcomingTests :[UpcomingTests] = [
        UpcomingTests(subject: "Algorithm Design Techniques", date: "May 25, 2024", totalMark: "100"),
        UpcomingTests(subject: "Graphs", date: "June 2, 2024", totalMark: "150"),
        UpcomingTests(subject: "Robotics", date: "June 4, 2024", totalMark: "120"),
        UpcomingTests(subject: "Physiotherapy", date: "June 6, 2024", totalMark: "100"),
        UpcomingTests(subject: "Organic Chemistry", date: "June 8, 2024", totalMark: "180"),
        UpcomingTests(subject: "Computer science", date: "June 10, 2024", totalMark: "140")
    ]
    
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    VStack{
                        //MARK: - Header Bar
                        Header_Bar_View(searchText: $searchText, isSearching: $isSearching, isNavigation: $isNavigation)
                            .padding(.top,16)
                            .padding(.horizontal,16)
                        Divider()
                            .background(.neutral200)
                            .padding(.top,16)
                        //MARK: - Alert Bar
                        AlertBar()
                        //MARK: - Test Card
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing:-8){
                                ForEach(testCards,id: \.self) { card in
                                    TestCarView(icon: card.icon, text: card.text, count: card.count,color: card.color)
                                }
                            }
                        }
                        //MARK: - Subject Scores & SemesterResult
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                SubjectScoresCardView(showPicker: $showPicker, selectedValue: $selectedValue, subjectTestMark: subjectTestMark)
                                SemesterResultCardView(showPicker: $showPickerYear, selectedValue: $selectedValueYear, semesterResult:semesterResult )
                            }.padding(.horizontal,18)
                        }
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: .infinity,height: 10)
                            .padding(.top,8)
                        
                        HStack{
                            Text("All Tests")
                                .semiBoldStyle(color: .primaryChalkGreen,size: 27.65)
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color.neutral300,lineWidth: 2)
                                    .fill(Color.neutral50)
                                    .frame(width: 38, height: 40)
                                
                                Image("BlankCalendar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 16, height: 16)
                                Circle()
                                    .foregroundColor(.primaryGreen)
                                    .frame(width: 5, height: 5)
                                    .offset(x: 5, y: -5)
                            }
                            RoundedRectangle(cornerRadius:10)
                                .stroke(Color.neutral300,lineWidth: 2)
                                .fill(Color.neutral300)
                                .frame(width: 320, height: 40)
                                .overlay {
                                    
                                    HStack(spacing:20){
                                        RoundedRectangle(cornerRadius:10)
                                            .stroke(Color.primaryChalkGreen,lineWidth: 2)
                                            .fill(Color.neutral50)
                                            .frame(width: 90, height: 32)
                                            .overlay {
                                                Button(action: {}) {
                                                    Text("All Test 8")
                                                        .semiBoldStyle(color:.primaryChalkGreen,size: 13.33)
                                                        .cornerRadius(10)
                                                }
                                            }
                                        RoundedRectangle(cornerRadius:10)
                                            .stroke(Color.neutral300,lineWidth: 2)
                                            .fill(Color.neutral50)
                                            .frame(width: 90, height: 32)
                                            .overlay {
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    Text("Upcoming 8")
                                                        .semiBoldStyle(color:.neutral400,size: 13.33)
                                                        .cornerRadius(10)
                                                }
                                            }
                                        RoundedRectangle(cornerRadius:10)
                                            .stroke(Color.neutral300,lineWidth: 2)
                                            .fill(Color.neutral50)
                                            .frame(width: 90, height: 32)
                                            .overlay {
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    Text("Completed ")
                                                        .semiBoldStyle(color:.neutral400,size: 13.33)
                                                    +  Text("8")
                                                        .semiBoldStyle(color:.primaryGreen,size: 13.33)
                                                }
                                            }
                                    }
                                }
                        }.padding(.horizontal,18)
                         .padding(.top,16)
                        
                        //MARK: - Upcoming Test
                        
                        VStack(alignment:.leading){
                            Text("Upcoming Tests")
                                .semiBoldStyle(color: .primaryChalkGreen,size: 19.2)
                                .padding(.leading,18)
                                .padding(.top,8)
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(spacing:-8){
                                    ForEach(upcomingTests,id: \.self) { upcomingTest in
                                        UpcomingTestsCardView(subject: upcomingTest.subject, date: upcomingTest.date, totalMark: upcomingTest.totalMark)}
                                }.padding(.top,-16)
                            }.padding(.top,8)
                            
                            Rectangle()
                                .foregroundColor(.neutral300)
                                .frame(width: .infinity,height: 1)
                                .padding(.top,8)
                            //MARK: - Passed Test
                            Text("Passed Tests")
                                .semiBoldStyle(color: .primaryChalkGreen,size: 19.2)
                                .padding(.leading,18)
                                .padding(.top,8)
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(spacing:-8){
                                    ForEach(upcomingTests,id: \.self) { upcomingTest in
                                        PassedTestsCardView(subject: upcomingTest.subject, date: upcomingTest.date, totalMark: upcomingTest.totalMark)}
                                }.padding(.top,-16)
                            }.padding(.top,8)
                            
                            Rectangle()
                                .foregroundColor(.neutral300)
                                .frame(width: .infinity,height: 1)
                                .padding(.top,8)
                            //MARK: - Failed Test
                            
                            Text("Failed Tests")
                                .semiBoldStyle(color: .primaryChalkGreen,size: 19.2)
                                .padding(.leading,18)
                                .padding(.top,8)
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(spacing:-8){
                                    ForEach(upcomingTests,id: \.self) { upcomingTest in
                                        FailedTestsCardView(subject: upcomingTest.subject, date: upcomingTest.date, totalMark: upcomingTest.totalMark)}
                                }.padding(.top,-16)
                            }.padding(.top,8)
                        }
                        Spacer()
                    }.background(.neutral200)
                }
                //MARK: - Sem Picker
                if showPicker {
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Button(action: {
                                showPicker = false
                            }) {
                                Image("Unattempted")
                            }.padding(.trailing,24)
                                .padding(.top,24)
                        }.frame(width: UIScreen.main.bounds.width)
                            .background(Color.white)
                            .padding(.bottom,-8)
                        Picker("Select an option", selection: $selectedValue) {
                            ForEach(sems, id: \.self) { sem in
                                Text(sem).tag(sem)
                            }
                        }.background(Color.white)
                            .pickerStyle(WheelPickerStyle())
                            .labelsHidden()
                    }
                }
                //MARK: - Sem Year Picker
                if showPickerYear {
                    
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Button(action: {
                                showPickerYear = false
                            }) {
                                Image("Unattempted")
                            }.padding(.trailing,24)
                                .padding(.top,24)
                        }.frame(width: UIScreen.main.bounds.width)
                            .background(Color.white)
                            .padding(.bottom,-8)
                        Picker("Select an option", selection: $selectedValueYear) {
                            ForEach(years, id: \.self) { year in
                                Text(year).tag(year)
                            }
                        }.background(Color.white)
                            .pickerStyle(WheelPickerStyle())
                            .labelsHidden()
                    }
                }
                
                NavigationLink(
                    destination:ListViewRootView(),
                    isActive: $isNavigation,
                    label: {}
                )
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    DashboardRootView()
}
struct VerticalDivider: View {
    var body: some View {
        Rectangle()
            .fill(Color.neutral200)
            .frame(width: 1)
    }
}








