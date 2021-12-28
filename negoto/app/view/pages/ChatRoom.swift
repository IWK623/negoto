//
//  ChatRoom.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI

struct ChatRoom: View {
    
    @ObservedObject var chatHelper = getChatHelperMock()
    
    init() {
        chatHelper.startPick()
    }
    
    var body: some View {
        VStack{
            CMessageList(chatHelper: chatHelper)
            
            Spacer()
            CMessageBox(chatHelper: chatHelper)
        }
        .padding()
    }
}

struct ChatRoom_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoom()
    }
}


func getChatHelperMock() -> ChatHelper {
    let helper : ChatHelper = ChatHelper()
    
    helper.pushMessage(message: MessageModel(message: "悩みです 私は、食べる音がすごく不快なんです 他にも口から発せられる言葉以外のあらゆる音を不快に感じます家族が不快な音を出した時は容赦なく睨みつけますおそらくミソフォニアとゆうやつだと思うんですけど、そ れって治す方法はありますか？"))
    helper.pushMessage(message: MessageModel(message: "悩みがあります。仕事の悩みなのですが、私より20歳年上の方なのですが体型がかなり大きく筋肉がかなりある方で私が仕 などと言って来ます。、正直かなりめんどくさいのですがどうすれば良いでしょうか？"))
    helper.pushMessage(message: MessageModel(message: "ノーマルとかの写真を昼間とか明るいところでとるとほんとに盛れません。でもくらい所？とかまぁ暗くなくても携帯の隣に違う携帯でライトたいてとると盛れます！顔が薄いからライト当てると盛れるのでしょうか昼間の方が写真撮るからそっちをなんとか盛りたい、でも顔がはっきり映らないから盛れないです"))
    helper.pushMessage(message: MessageModel(message: "悩みを聞いてください。 私は口下手で人に物事を説明する事が苦手です。 改善しようにも、何からどうやって改善すればいいのかも分かりません 色々、思うままに書いたので読みづらいと思いますが皆様の意見を下さい。"))
//
    helper.pickMessage()
    helper.pickMessage()

    
    return helper
}
