//
//  MyTextView.swift
//  Tutorial_SwiftUI_01
//
//  Created by 송우진 on 2021/06/17.
//

import SwiftUI

struct MyTextView: View {
    
    // 데이터를 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
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
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
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
