//
//  ProfileViewModel.swift
//  ChatWithJames_iOS
//
//  Created by James Estrada on 3/12/21.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
