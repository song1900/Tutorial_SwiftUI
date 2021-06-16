//
//  ContentView.swift
//  Tutorial_SwiftUI_01
//
//  Created by 송우진 on 2021/06/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
            
        } // HStack
        .padding(30)
        .background(Color.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
