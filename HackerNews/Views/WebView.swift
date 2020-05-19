//
//  WebView.swift
//  HackerNews
//
//  Created by Dad on 2020-05-19.
//  Copyright © 2020 Dad. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView();
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
