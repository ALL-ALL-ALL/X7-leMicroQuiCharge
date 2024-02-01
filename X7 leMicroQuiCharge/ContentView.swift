//
//  ContentView.swift
//  X7 leMicroQuiCharge
//
//  Created by  Ixart on 30/11/2023.
//
import UIKit
import SwiftUI

struct ContentView: View {
    @State private var percentage: Double = 10.0
    @State var progress: Double = 0.0

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Mettre en noir la ZStack

            Image(systemName: "mic.and.signal.meter.fill",variableValue: progress)
            
                .foregroundStyle(.mint, .white)

                .foregroundColor(.white) // Définir la couleur de l'image en blanc

                .scaleEffect(5.0)
                .offset(y: -90)

            HStack{
                
                Button("-") {
                                   if progress > 0 {
                                       progress -= 0.1
                                       updatePercentage()
                                   }
                               } // FIN BOUTTON
                
                .background(Color.gray) // Couleur de fond grise

                .scaleEffect(2.0)
                Text("\(Int(percentage))%")
                    .foregroundColor(.white) // Définir la couleur de l'image en blanc
                    .scaleEffect(2.0)
                    .padding(5)
                .padding()
                .padding()
                .padding()
                Button("+") {
                                   if progress < 1 {
                                       progress += 0.1
                                       updatePercentage()
                                   }
                               } // FIN BOUTTON
                
                .background(Color.gray) // Couleur de fond grise
                    .scaleEffect(2.0)
                } // FIN HSTACK
            } // FIN ZSTACK
        } // FIN BODY
    private func updatePercentage() {
            percentage = progress * 10
        }
    } // FIN STRUCTURE
#Preview {
    ContentView()
        
}




