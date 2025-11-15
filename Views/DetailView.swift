//
//  DetailView.swift
//  H4XOR News
//
//  Created by Vitali Kupratsevich on 11/15/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        if let urlString = url,
           let url = URL(string: urlString) {
            WebView(url: url)
                .ignoresSafeArea()
        } else {
            Text("Invalid URL")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}


