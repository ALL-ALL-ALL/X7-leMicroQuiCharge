//
//  ContentView.swift
//  X7 leMicroQuiCharge
//
//  Created by  Ixart on 30/11/2023.
//
import UIKit
import SwiftUI

struct ContentView: View {
    @State private var percentage: Double = 50.0
    

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Mettre en noir la ZStack

            Image(systemName: "mic.and.signal.meter.fill",variableValue: 0.3)
            
                .foregroundStyle(.mint, .white)

                .foregroundColor(.white) // Définir la couleur de l'image en blanc

                .scaleEffect(5.0)
                .offset(y: -90)

            HStack{
                
                Button("-") {
                                   if percentage > 0 {
                                       percentage -= 10.0
                                       

                                   }
                       
                               }
                .background(Color.gray) // Couleur de fond grise

                .scaleEffect(2.0)
                
                
                
                Text("\(Int(percentage))%")
                    .foregroundColor(.white) // Définir la couleur de l'image en blanc

                    .scaleEffect(2.0)
                    .padding(5)
                
                
                .padding()
                .padding()
                .padding()
                .padding()
                .padding()
                
               
                Button("+") {
                                   if percentage < 100 {
                                       percentage += 10.0
                                      
                                       
                                   }
                    
                               }
                .background(Color.gray) // Couleur de fond grise

                    
                    .scaleEffect(2.0)
                    
                

                }

            
            }

            
            
            
            

            
            
        }
        
    }
    


#Preview {
    ContentView()
        
}




