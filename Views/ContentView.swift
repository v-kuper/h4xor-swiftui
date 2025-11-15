//
//  ContentView.swift
//  H4XOR News
//
//  Created by Vitali Kupratsevich on 10.09.25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
