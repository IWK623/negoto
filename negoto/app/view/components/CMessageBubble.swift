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
        VStack{
            Text(contentMessage)
                .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
                
        }
        .padding(20)
        .background(Color.blue.opacity(0.5))
        .cornerRadius(10)

        

    }
}

struct CMessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        CMessageBubble(contentMessage: "This is test message.")
            .previewLayout(.sizeThatFits)
    }
}
