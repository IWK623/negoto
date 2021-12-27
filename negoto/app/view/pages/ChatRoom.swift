//
//  ChatRoom.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/27.
//

import SwiftUI

struct ChatRoom: View {
    
    @ObservedObject var chatHelper = getChatHelperMock()
    
    var body: some View {
        VStack{
            CMessageList(chatHelper: chatHelper)
            
            Spacer()
            CMessageBox(chatHelper: chatHelper)
        }.padding()
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
    helper.pushMessage(message: MessageModel(message: "悩みがあります。仕事の悩みなのですが、私より20歳年上の方なのですが体型がかなり大きく筋肉がかなりある方で私が仕事をしてるとお前上司に目を付けられてるから気をつけろ。台風の目だからな と言って来るのです が上司からは別に変わった対応はされていないのです。またその方は自分が女子と話してる時は何も無いのですが私が女子と話してる時に後で私に近寄ってきて、お前上司に見られていたからな気をつけろよ などと言って来ます。、正直かなりめんどくさいのですがどうすれば良いでしょうか？"))
    helper.pushMessage(message: MessageModel(message: "ノーマルとかの写真を昼間とか明るいところでとるとほんとに盛れません。でもくらい所？とかまぁ暗くなくても携帯の隣に違う携帯でライトたいてとると盛れます！顔が薄いからライト当てると盛れるのでしょうか昼間の方が写真撮るからそっちをなんとか盛りたい、でも顔がはっきり映らないから盛れないです"))
    helper.pushMessage(message: MessageModel(message: "悩みを聞いてください。 私は口下手で人に物事を説明する事が苦手です。 改善しようにも、何からどうやって改善すればいいのかも分かりません。  更に極め付きは、人の話を一回で理解したり、暗記？ができません。  例えば、バイトのミーティングで話した事を1分後にはほとんど忘れていて、注意されたりします。  そのため、メモは欠かせません。(メモをしていても上手く説明をしたり、理解ができない事が多い)  でも、毎回事あるごとにメモするのは自分でも疲れてきました。  口下手なのと、話をすぐに理解や暗記ができない事が合わさって、相手を困らせたり迷惑をかけてしまう自分が大嫌いです。  将来が怖いです。 バイトの状況でこれなら、就職した場合、想像するだけで嫌になります。  不思議な事に、日常会話などの話は問題なく行えます。 しかし、バイトなどで普段使わないような単語だったり会話などを聞いたり話したりすると、頭の中が訳がわからなくなってしまいます。  単純にどうすればいいか分からない。  自分がこんなにも無能だったなんてバイトをやり始めて今更気づきました。(19歳、バイト歴5ヶ月)  色々、思うままに書いたので読みづらいと思いますが皆様の意見を下さい。"))
    
    
    return helper
}
