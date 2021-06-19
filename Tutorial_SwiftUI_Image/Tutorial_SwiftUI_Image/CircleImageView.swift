//
//  CircleImageView.swift
//  Tutorial_SwiftUI_Image
//
//  Created by 송우진 on 2021/06/19.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(Color.green)
//            .shadow(color: .gray, radius: 2, x: 3, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.5)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 5)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.green, lineWidth: 5)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.pink, lineWidth: 5)
            )
            .overlay(
                Text("SwiftUI")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
            )
        
//            .aspectRatio(contentMode: .fill)
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
