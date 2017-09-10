//
//  ChatListCellTableViewCell.swift
//  Chat Simples
//
//  Created by Gabriel Bezerra Valério on 10/09/17.
//  Copyright © 2017 The iOS Disciple. All rights reserved.
//

import UIKit

class ChatListCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var contactInitialLabel: UILabel!
    
    var model:ChatListCellViewData? {
        didSet {
            guard contactNameLabel != nil else {
                return
            }
            let isIncoming = model?.isIncoming ?? true
            
            contactNameLabel.text = model?.contactName
            contactInitialLabel.text = model?.contactInitial
            lastMessageLabel.text = isIncoming ? model?.lastMessage : "Você: \(model?.lastMessage ?? "")"
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        model = nil
    }
    
}
