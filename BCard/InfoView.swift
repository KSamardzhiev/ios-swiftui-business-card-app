//
//  InfoView.swift
//  BCard
//
//  Created by Kostadin Samardzhiev on 30.12.21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    let imageColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(imageColor)
                    Text(text)
                }
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "test", imageName: "phone.fill", imageColor: .green)
            .previewLayout(PreviewLayout
                        .sizeThatFits)
    }
}
