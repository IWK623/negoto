//
//  Message.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI

struct CMessageBubble: View {
    
    var contentMessage: String
    @State var tokens : [String]?
    
    @State private var introTextOpacity = 1.0
    
    init(contentMessage : String){
        tokens =  Tokenizer.tokenaraize(text: contentMessage)
        self.contentMessage = contentMessage
    }
    

    var body: some View {
        HStack{
            tokens!.reduce(
                Text(""), {
                    if($1.count > 1 && tokens?.firstIndex(of: $1) != tokens?.lastIndex(of: $1)){
                        return $0 + Text(" ").font(.system(size: 8)) + Text($1)
                            
                            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
                            .font(.system(size:16 , design: .serif))
                            .bold() + Text(" ").font(.system(size: 8))
                    }else{
                        return $0 + Text($1)
                            .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.26).opacity(0.5))
                            .font(.system(size:16 , design: .serif))
                            
//                            .onAnimationCompleted(for: introTextOpacity) {
//                                print("Intro text animated in!")
//                            }
                            
                    }
                } )

                
        }
        .padding(20)
        .background(Color(red: 0.917, green: 0.917, blue: 0.917).opacity(1))
        .cornerRadius(10)
        .onAppear(perform: {
                    withAnimation(.easeIn(duration: 10.0)) {
                        introTextOpacity = 1.0
                    }
                })

        

    }
}

struct CMessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        CMessageBubble(contentMessage: "This is test message.")
            .previewLayout(.sizeThatFits)
    }
}
