//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Vitali Kupratsevich on 11/15/25.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                guard error == nil else { return }
                guard let safeData = data else { return }
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(PostData.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = result.hits
                    }
                } catch {
                    print("Decoding error:", error)
                }
            }
            task.resume()
        }
    }
}
