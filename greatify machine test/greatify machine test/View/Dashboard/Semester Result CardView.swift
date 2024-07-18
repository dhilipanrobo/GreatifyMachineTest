import SwiftUI

struct SemesterResultCardView: View {
    @Binding var showPicker: Bool
    @Binding var selectedValue: String
    @State var semesterResult: [SemesterResult]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Semester results")
                        Spacer()
                        Button(action: {
                            showPicker.toggle()
                        }) {
                            HStack {
                                Text(selectedValue)
                                    .semiBoldStyle(color: .neutral500, size: 11.11)
                                    .foregroundColor(.neutral500)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                Image("down arrow")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 6, height: 3)
                                    .clipped()
                            }
                        }
                        .frame(minWidth: 120, maxWidth: 120, maxHeight: 40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.neutral200, lineWidth: 1)
                        )
                    }
                }
            }
            .padding(.horizontal, 18)
            .padding(.top, 18)
            
            HStack {
                Text("Semester result per year")
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
                ForEach($semesterResult, id: \.self) { seme in
                    SemesterResultCard(sem: seme.seme, grade: seme.grade, percentage: seme.percentage)
                        .padding(.horizontal, 18)
                        .padding(.top, 24)
                }
            }
            Spacer()
        }
        .frame(width: 497, height: 286)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct SemesterResultCard: View {
    @Binding var sem: String
    @Binding var grade: String
    @Binding var percentage: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Sem \(sem)")
                    .normalStyle(color: .neutral400, size: 13.33)
                Spacer()
                Text("Grade: \(grade)")
                    .normalStyle(color: .neutral400, size: 13.33)
            }
            ProgressBar(progressValue: stringToCGFloat(percentage) ?? 0.0)
                .padding(.trailing, -40)
                .padding(.leading, -18)
                .padding(.top, -8)
        }
    }
}
