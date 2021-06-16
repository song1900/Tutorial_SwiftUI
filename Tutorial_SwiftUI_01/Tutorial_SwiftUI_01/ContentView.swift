//
//  ContentView.swift
//  Tutorial_SwiftUI_01
//
//  Created by 송우진 on 2021/06/16.
//

import SwiftUI

struct ContentView: View {
    
    @State // 값의 변화를 감지 -> View에 적용
    private var isActivated: Bool = false
    
    var body: some View {
    
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
            
        } // HStack
        .padding(isActivated ? 50.0 : 10.0)
        .background(isActivated ? Color.yellow : Color.green)
        .onTapGesture {
            print("Click HStack")
            // Animation
            withAnimation{
                self.isActivated.toggle()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
