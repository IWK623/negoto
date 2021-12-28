//
//  Tokenizer.swift
//  negoto (iOS)
//
//  Created by Kei Iwami on 2021/12/28.
//

import Foundation
import NaturalLanguage

struct Tokenizer {


    public static func tokenaraize(text : String) -> [String]{
        
        var texts : [String] = []
        
        let tagger = NLTagger(tagSchemes: [.lexicalClass])
        // 2. テキストを設定する
        tagger.string = text
        // 3. 句読点/スペースを除外するオプションを作成
        let options: NLTagger.Options = [
//            .omitPunctuation, .omitWhitespace
        ]
        // 4. enumerateTags(in:unit:scheme:options:using:)を使用してタグ付けされた単語を列挙する
        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { tag, tokenRange in
           
//                print("\(text[tokenRange]): \(tag.rawValue)")
                let substr =  text[tokenRange]
                texts.append(substr.description)
          
            return true
        }
//        NSLog(texts.description)
        return texts
    }

}
