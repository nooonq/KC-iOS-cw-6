//
//  ContentView.swift
//  BMI calculator
//
//  Created by NOUNI on 8/14/22.
//

//Dosis-Medium
//Dosis-Bold
//Dosis-Light
//Dosis-Regular
//Dosis-SemiBold

import SwiftUI

extension Color {
    static let lightRedGray = Color(red: 140 / 255, green: 121 / 255, blue: 119 / 255)
    static let redbrown = Color(red: 38 / 255, green: 8 / 255, blue: 1 / 255)
    static let lightbrown = Color(red: 64 / 255, green: 49 / 255, blue: 44 / 255)
    static let beige = Color(red: 191 / 255, green: 180 / 255, blue: 170 / 255)
    static let Notwhite = Color(red: 246 / 255, green: 255 / 255, blue: 245 / 255)
    static let creamWhite = Color(red: 242 / 255, green: 239 / 255, blue: 233 / 255)

}

struct ContentView: View {
    
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""

    
    
    
    var body: some View {
        
        
      
        ZStack{
            
            
            Color.creamWhite
                .ignoresSafeArea()
            
            
            
            VStack{
                
                Text("BMI Calculator")
                    .font(Font.custom("Dosis-Bold", size: 45))
                    .foregroundColor(.lightbrown)
                
                
                
            Image("mz")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
                
            Text("Enter your weight and height")
                    .font(Font.custom("Dosis-Medium", size: 30))
                    .foregroundColor(.redbrown)
                    .padding(.top)
                
                
                TextField("weight",text: $weight)
                    .font(Font.custom("Dosis-Regular", size: 20))
                    .padding()
                
                
                TextField("height",text: $height)
                    .font(Font.custom("Dosis-Regular", size: 20))
                    .padding()
                
                
                
                Button {
                    result = BMIcalc(w: Double(weight) ?? 0.0   , h: Double(height) ?? 0.0 )
                    
                    
                    if result <= 20 {
                        
                        health = "Weak"
                            
                        
                    }
                    
                    else if result <= 25 {
                        
                        health = "Good"
                        
                    }
                    
                    else {
                        
                        health = "Fat"
                        
                    }
                    
                    
                    
                } label: {
                    
                    Text("CALCULATE")
                        .font(Font.custom("Dosis-SemiBold", size: 27))
                        .foregroundColor(.redbrown)
                        .padding()
                        .background(Color.beige)
                        .cornerRadius(10)

                }.padding(.top)
                
                Spacer()

                Text("BMI = \(result)")
                                        .font(Font.custom("Dosis-Light", size: 24))
                                        .foregroundColor(.lightbrown)
                
                Text("Condition = \(health)")
                                        .font(Font.custom("Dosis-Light", size: 24))
                                        .foregroundColor(.lightbrown)
                
                Spacer()
            }
        }
        
        
        
    }
    
    func BMIcalc(w: Double, h: Double) -> Double {
        
        return w / (h * h)
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
