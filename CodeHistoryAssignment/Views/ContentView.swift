//
//  ContentView.swift
//  CodeHistoryAssignment
//
//  Created by Fred Tsui on 2/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant","Beetle","Moth","Fly"],
        correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 50/255, green: 50/255, blue: 150/255)

    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count, id: \.self) {
                        answerIndex in
                        Button(action: {
                            print("Tapped on option with the text \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
