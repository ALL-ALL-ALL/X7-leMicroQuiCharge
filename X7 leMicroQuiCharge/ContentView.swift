//
//  ContentView.swift
//  X7 leMicroQuiCharge
//
//  Created by  Ixart on 30/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Double = 50.0
    @State private var percentage: Double = 50.0



    


    var body: some View {
        
        
        ZStack {
            
        
            



            Color(.black)
            
            Image(systemName: "mic.and.signal.meter.fill", variableValue : progress )




                .scaleEffect(5.0)
                .offset(y: -90)
                .colorInvert()
                
            

            
            HStack{
                
                Button("-") {
                                   if percentage > 0 {
                                       percentage -= 10.0
                                   }
                       
                               }
                .colorInvert()
                .scaleEffect(5.0)
                
                
                
                Text("\(Int(percentage))%")
                    .colorInvert()
                    .scaleEffect(1.5)
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
                    
                    .colorInvert()
                    .scaleEffect(5.0)
                

                }

            
            }

            
            
            
            

            
            
        }
        
    }
    


#Preview {
    ContentView()
        
}




