//
//  ConversationsModels.swift
//  ChatWithJames_iOS
//
//  Created by James Estrada on 3/12/21.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
