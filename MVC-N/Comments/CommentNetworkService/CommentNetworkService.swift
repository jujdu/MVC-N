//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Michael Sidoruk on 15/10/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getDate(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error )
            }
        }
    }
}
