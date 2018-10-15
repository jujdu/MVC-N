//
//  NetworkService.swift
//  MVC-N
//
//  Created by Michael Sidoruk on 15/10/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import Foundation

class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    public func getDate(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
