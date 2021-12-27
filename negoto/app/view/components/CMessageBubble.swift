//
//  Message.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI

struct CMessageBubble: View {
    
    var contentMessage: String
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        CMessageBubble(contentMessage: "This is test message.")
            .previewLayout(.sizeThatFits)
    }
}
