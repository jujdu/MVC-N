//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Michael Sidoruk on 15/10/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [[String: AnyObject]] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dic in array {
            guard let comment =  Comment(dict: dic) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
