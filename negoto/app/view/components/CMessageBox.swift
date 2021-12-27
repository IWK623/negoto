//
//  MessageBox.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI


struct CMessageBox: View {
    
    @ObservedObject var chatHelper : ChatHelper
    
    @State var typingMessage: String = ""
    
    var body: some View {
        HStack{
            TextField("Message...", text: $typingMessage)
                      .textFieldStyle(RoundedBorderTextFieldStyle())
                      .frame(minHeight: CGFloat(30))
            Button(action: {
                chatHelper.pushMessage(message: self.typingMessage)
                self.typingMessage = ""
            }) {
                Text("投稿")
            }
        }
    }
}

struct MessageBox_Previews: PreviewProvider {
    static var previews: some View {
        CMessageBox(chatHelper: ChatHelper())
            .previewLayout(.sizeThatFits)

    }
}
