//
//  ChoiceTextView.swift
//  CodeHistoryAssignment
//
//  Created by Fred Tsui on 2/27/24.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let accentcolor = Color(red: 250/255, green: 250/255, blue:
    100/255)
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentcolor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "I am GROOT!")
    }
}
