//
//  MyWebview.swift
//  Tutorial_SwiftUI_Webview
//
//  Created by 송우진 on 2021/06/18.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록
// UIViewControllerRepresentable

struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    
    // create ui view
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    
    // update ui view
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
