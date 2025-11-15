//
//  WebView.swift
//  H4XOR News
//
//  Created by Vitali Kupratsevich on 11/15/25.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {

        if uiView.url != url {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
