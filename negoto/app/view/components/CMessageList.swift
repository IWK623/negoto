//
//  CMessageList.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI



struct CMessageList: View {
    @ObservedObject var chatHelper : ChatHelper
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(){
                    Rectangle().frame(height: 1000).opacity(0)
                    ForEach(chatHelper.messages.indices, id: \.self) { i in
                        CMessageBubble(contentMessage: chatHelper.messages[i].text)
                    }
                }.onChange(of: chatHelper.messages.count) { _ in
                    proxy.scrollTo(chatHelper.messages.count - 1)
                }
            }
        }
    }
}

struct CMessageList_Previews: PreviewProvider {
    
    static var previews: some View {
        CMessageList(chatHelper: getChatHelperMock())
    }
}

