//
//  ChatHelper.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import Foundation
import SwiftUI

class ChatHelper : ObservableObject {
    
    var scrollProxy : ScrollViewProxy?;
    @Namespace var msgBottomID
    
    @Published var messages : [MessageModel] = []
    
    public func pushMessage(message : String) -> Void{
        if(message != ""){
            messages.append(MessageModel(message: message))
        }
    }
    
    public func pushMessage(message : MessageModel) -> Void{
        messages.append(message)
    }

  
    
}
