//
//  ChatHelper.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import Foundation
import SwiftUI

class ChatHelper : ObservableObject {
    
    private var messages_pre : [MessageModel] = []
    @Published var messages : [MessageModel] = []
    
    private var messagePickScheduler : MessagePickScheduler?
    
    init(){
        
    }
    
    public func startPick(){
        self.messagePickScheduler =  MessagePickScheduler(chatHelper: self)
    }
    
    public func pushMessage(message : String) -> Void{
        if(message != ""){
            self.pushMessage(message: MessageModel(message: message))
        }
    }
    
    public func pushMessage(message : MessageModel) -> Void{
        messages_pre.append(message)
    }

    
    public func pickMessage() -> Void{
        if(self.messages_pre.count > 0){
            self.messages.append(self.messages_pre[0])
            self.messages_pre.removeFirst()
        }
    }
    
}
