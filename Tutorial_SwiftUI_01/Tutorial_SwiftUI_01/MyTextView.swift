//
//  MyTextView.swift
//  Tutorial_SwiftUI_01
//
//  Created by 송우진 on 2021/06/17.
//

import SwiftUI

struct MyTextView: View {
    
    @State
    private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all) // SafeArea 까지 채우기
        .onTapGesture {
            print("배경아이템이 클릭 되었다.")
            (self.index == self.backgroundColors.count - 1) ? (self.index = 0) : (self.index += 1)
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
