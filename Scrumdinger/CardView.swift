//
//  CardView.swift
//  Scrumdinger
//
//  Created by HALUK BAYRAKCI on 29.09.2023.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .padding(.leading, 20)
                .padding(.top, 5)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", 
                      systemImage: "person.3")
                .accessibilityLabel("\(scrum.attendees.count) attendees")
                .padding(.leading, 20)
                .padding(.bottom, 5)
                Spacer()
                Label("\(scrum.lengthInMinutes)",
                      systemImage: "clock")
                .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")

                .labelStyle(.trailingIcon)
                .padding(.trailing, 20)
                .padding(.bottom, 5)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}


