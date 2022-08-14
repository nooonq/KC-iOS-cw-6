//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

extension Color {
    static let cream = Color(red: 224 / 255, green: 211 / 255, blue: 169 / 255)
    static let purp = Color(red: 59 / 255, green: 49 / 255, blue: 99 / 255)
    static let prpl = Color(red: 109 / 255, green: 84 / 255, blue: 142 / 255)
    static let pired = Color(red: 191 / 255, green: 75 / 255, blue: 75 / 255)
    
    
}


struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        
        
        ZStack{
        
            Color.cream
                .ignoresSafeArea()
            
            
        VStack{
            
            
            Text("الأذكــــــــــــــــــار")
                .font(Font.custom("GraphikArabic-Black", size: 50))
                .foregroundColor(.purp)
            
            
            
            Counterview(myCounter: $counter[0], title: "أستغفر الله العظيم")
            Counterview(myCounter: $counter[1], title: "الحمدلله")
            Counterview(myCounter: $counter[2], title: "سبحان الله وبحمده")

        }
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            
        }
    }
}

struct Counterview: View {
    
    @Binding var myCounter : Int
    @State var title = ""
    
    var body: some View {
        HStack{
            Text(title)
                .font(Font.custom("GraphikArabic-Semibold", size: 25))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.prpl)
            Spacer()
            Text("\(myCounter)")
                .font(Font.custom("GraphikArabic-Semibold", size: 40))
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.cream)
                .background(Color.pired)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    myCounter = myCounter + 1
                }
        }.padding()
    }
}
