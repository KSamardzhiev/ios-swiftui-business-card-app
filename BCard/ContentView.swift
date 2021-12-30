//
//  ContentView.swift
//  BCard
//
//  Created by Kostadin Samardzhiev on 30.12.21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    init(){
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.29, green: 0.48, blue: 0.93)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("ksamardzhiev")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Kostadin Samardzhiev")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+359 123 456 7", imageName: "phone.fill", imageColor: .green)
                InfoView(text: "k.samardzhiev@gmail.com", imageName: "envelope.fill", imageColor: .blue)
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
