//
//  MessagePickScheduler.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/28.
//

import Foundation

class MessagePickScheduler{
    
    private var loopTimer : Timer

    init(chatHelper : ChatHelper){
        loopTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: {(time) -> Void  in
            NSLog("call pick..." + time.description)
            chatHelper.pickMessage()
        })
        
    }
    
}
