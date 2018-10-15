//
//  CommandCell.swift
//  MVC-N
//
//  Created by Michael Sidoruk on 15/10/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
