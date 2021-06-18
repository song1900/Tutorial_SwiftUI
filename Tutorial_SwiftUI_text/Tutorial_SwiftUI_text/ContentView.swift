//
//  ContentView.swift
//  Tutorial_SwiftUI_text
//
//  Created by 송우진 on 2021/06/18.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        
        VStack {
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambleds")
                .tracking(3)
                .font(.system(.body, design: .rounded))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10)
                .truncationMode(.middle)
                .shadow(color: Color.red, radius: 1.5, x: 5, y: 10)
                
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(10)
                
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
            
            Text("안녕하세요!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
