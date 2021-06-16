//
//  MyVStackView.swift
//  Tutorial_SwiftUI_01
//
//  Created by 송우진 on 2021/06/17.
//

import SwiftUI

struct MyVStackView: View {
    
    var body: some View {
        VStack {
            Text("1")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
            Text("2")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
            Text("3")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
        } // VStack
        .background(Color.red)
    }
}

// 보여주는 용도
struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
