//
//  NetworkingForEpisodes.swift
//  Rick_And_Morty-32
//
//  Created by gvantsa gvagvalia on 5/31/24.
//

import Foundation


public class NetworkingForEpisodes {
    
    public static let shared = NetworkingForEpisodes()
    
    private init() {}
    
    public func fetchData(urlString: URL, completion: @escaping (Data?) -> Void) {
        
        URLSession.shared.dataTask(with: urlString) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error)")
                completion(nil)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                print("Invalid response")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            
            completion(data)
        }
        .resume()
    }
}
