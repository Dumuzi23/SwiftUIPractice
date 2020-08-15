//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Tatsuya Amida on 2020/08/14.
//  Copyright © 2020 T.A. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showedHand = "rock"
    let handList = ["rock", "scissors", "paper"]

    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                HStack{
                    JankenView(hand: showedHand)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.showedHand = self.handList.randomElement()!
                }) {
                    Text("Start")
                        .font(Font.custom("Pacifico-Regular", size: 50))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct JankenView: View {
    
    var hand: String
    
    var body: some View {
        Image("\(hand)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
