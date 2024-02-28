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
    
    let mainColor = Color(red: 50/255, green: 50/255, blue: 150/255)

    
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
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
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
