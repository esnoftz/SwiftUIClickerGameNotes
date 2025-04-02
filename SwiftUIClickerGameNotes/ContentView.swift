//
//  ContentView.swift
//  SwiftUIClickerGameNotes
//
//  Created by EVANGELINE NOFTZ on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    
    // state variables: anytime its state changes, all places on screen that use that variable update automatically
    @State var points = 0
    
    var body: some View {
        // vertical stack view
        VStack {
            
            Text("My Clicker Game")
                .font(.largeTitle) // . changes attributes of what you are in (in this case, Text) -- would have to do this manually in UIKit
                .foregroundStyle(.red) // changes text color

            Spacer() // puts spacer in vertical stack below the Text
            
            HStack {
                Spacer()
                
                Text("\(points)")
                    .font(.largeTitle)
                
                Spacer()
                
                // button goes below the spacer
                Button("Push Me") {
                    // this is a closure, put code of what you want to happen when pushed in here (easier than UIKit)
                    print("hi")
                    points += 1
                }
                
                // attributes put below the button is declared belong to the button
                //.tint(.blue) // changes text color on button
                //.frame(minWidth: 0, maxWidth: .infinity)
                .buttonStyle(.borderedProminent) // was manual in UIKit
                //.background(.red)
                .tint(.yellow) // changes background color of button now
                .cornerRadius(12) // makes button more round
                .font(.largeTitle)
                
                
                Spacer()
            }
            Spacer() // puts spacer in vertical stack below the Button
            
            // putting image on button
            Button(action: {
                // this is a closure, put code of what you want to happen when pushed in here (easier than UIKit)
                print("gru")
                //points += 1
            }) {
                Image("GruImage")
            }
            
        }
        
        //Spacer() // puts spacer below vertical stack, pushing VStack to top
        
    }
    
    
}
    #Preview {
        ContentView()
    }
    

