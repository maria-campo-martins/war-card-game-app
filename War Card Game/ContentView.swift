//
//  ContentView.swift
//  War Card Game
//
//  Created by Maria Campo Martins on 2023-07-08.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card7"
    @State var cpuCard:String = "card13"
   
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                HStack {
                Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
    
    func deal() {
        // Randomize the players card
        var newIntP:Int = Int.random(in: 2...14)
        playerCard = "card" + String(newIntP)
        
        // Randomize the cpus card
        var newIntC:Int = Int.random(in: 2...14)
        cpuCard = "card" + String(newIntC)
        
        // Update the scores
        if newIntP > newIntC {
            playerScore += 1;
        }
        else if newIntC > newIntP {
            cpuScore += 1;
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
