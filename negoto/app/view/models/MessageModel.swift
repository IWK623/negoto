//
//  MessageModel.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import Foundation

class MessageModel : ObservableObject {
    var text : String
    
    init(message : String) {
        self.text = message
    }

}
