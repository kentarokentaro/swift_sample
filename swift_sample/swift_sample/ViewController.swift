//
//  ViewController.swift
//  swift_sample
//
//  Created by Miura Kentaro on 2016/12/03.
//  Copyright © 2016年 Miura Kentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Hello World
        print("Hello World")

        /* 定数 let */
        
        // Pettern - 1
        let msg1: String
        msg1 = "Hello World"
        print("msg1 =",msg1)

        // Pettern - 2
        let msg2 = "Hello World"
        print("msg2 =",msg2)
        
        /* 変数 val */

        // Pettern - 1
        var msg3: String
        msg3 = "Hello World"
        msg3 = "Hello Again"
        print("msg3 =",msg3)

        // Pettern - 2
        var msg4 = "Hello World"
        msg4 = "Hello Again"
        print("msg4 =",msg4)
        
        /* 基本的な型 Basic Class */
        //Int
        let i = 10
        print("int i =",i)

        //Float Double
        let d = 53.8
        print("float d =",d)
        
        //String
        let s = "hello"
        print("String s =",s)
        
        //BOOL true/false
        let flag = true
        print("BOOL flag =",flag)
        
        //簡単な型変換
        var x = "five"
        x = String(5)
        print("change x =",x)
        
        /* 演算 Calculation*/
        
        //数値
        print(10 / 3)
        print(10.0 / 3)
        print(10 % 3)
        
        var y = 10
        y = y + 10
        y += 5
        print(y)
        
        // 文字列 String
        print("hello" + "world")
        print("y is \(y)")
        print("y2 is \(y * 2)")
        
        // 論理値
        print(true && false)
        print(true || false)
        print(!true)
        
     
        /* if */
        var score = 40
        
        // 乱数 rand
        score = Int(arc4random() % 100 + 1)

        var result: String
        
        // if文
        if score > 80
        {
            result = "great!"
        }
        else if score > 60
        {
            result = "good!"
        }
        else
        {
            result = "so so ..."
        }
        
        // 条件演算子
        result = score > 80 ? "great" : "so so ..."
        
        print("score = ",score)
        print("result = ",result)
        
        // switch
        var num = 0
        num = Int(arc4random() % 15 + 1)
        switch num {
        case 0:
            print("zero")
        case 1,2,3:
            print("small")
        case 4...6:
            print("4/5/6")
        case 7..<9 :
            print("7/8")
        case let n where n > 20:
            print("\(n) is huge!")
        default:
            print("not available")
        }
        
        /* while */
        var n = 10
        
        // while文
        while n < 3 {
            print(n)
            n += 1
        }
        
        // repeat while文
        repeat {
            print(n)
            n += 1
        }while n < 3

        /* for */
        
        // for文
        for i in 0...5 {
            if i == 3 {
                break
            }
            print(i)
        }
        
        /* Optional type */
        let s1 :Optional<String> = nil
        let s2 :String? = nil
        
        if s1 != nil {
            print(s1!) // Optional型の変数を取り出すには!が必要
        }
        
        if s2 != nil {
            print(s2!) // Optional型の変数を取り出すには!が必要
        }
        
        // Optional Binding
        // 例:s1がnilでなかった場合にvalueへ代入される
        if let value = s1
        {
            print(value)
        }
        
        // 条件演算子のような書き方もある
        print(s1 ?? "this is nil!")
        
        
        /* 配列 */
        
        // 配列の生成
        //var scores : [Int] = [50, 40]
        var scores = [50, 40]
        print(scores[0]) // 50

        // 要素の書き換え
        scores[1] = 30
        
        print(scores)
        print(scores.count)
        
        // nil確認
        print(scores.isEmpty)
        
        // 空の配列の生成
        var names = [String]()
        // 要素の追加
        names.append("kentaro")
        names.append("miura")
        names += ["miurakentaro"]
        
        // 出力
        for name in names {
            print(name)
        }
        
        /* タプル */
        // 別の型同士での配列
        var items1 = ("apple", 5)
        // 呼び出し
        print(items1.0)
        // 書き込み
        items1.1 = 8
        print(items1)

        // 別の変数に割り当てる
        let (product1, amount1) = items1
        print(product1)
        print(amount1)
        
        // 不要な要素を消す
        let (product2, _) = items1
        print(product2)
        
        // キー名をつけてセットする
        let items2 = (product3: "apple", amount3: 5)
        print(items2.product3)
        
        
        /* 集合 */
        var winners: Set<Int> = [3, 4, 8, 8]
        print(winners)
        print(winners.contains(3))
        winners.insert(10)
        winners.remove(5)
        print(winners)
        print(winners.count)
        
        // 集合型の生成
        let s3 = Set<Int>()
        print(s3.isEmpty)
        
        // ２つの集合型
        let a: Set = [1,3,5,8]
        let b: Set = [3,5,8,9]
        
        // 和集合（合わせる）
        print(a.union(b))
        // 積集合（被ってるものだけ）
        print(a.intersection(b))
        // 差集合（被ってるものを省く）
        print(a.subtracting(b))
        
        
        /* 辞書 */
        // var salse: Dictionary<String, Int> = ["miura": 200,"kentaro": 300]
        
        // dictionary型の生成
        var sales = ["miura": 200,"kentaro": 300]
        // 要素の書き換え
        sales["kentaro"] = 500
        // 要素はOptinal型
        print(sales["kentaro"] ?? "n.a.")
        // 要素の追加
        sales["miurakentaro"] = 600
        // 要素数
        print(sales.count)
        
        for (key, value) in sales {
            print("\(key):\(value)")
        }
        
        // 空のdictionaryの変数を生成
        let d2 = [String: Int]()
        print(d2.isEmpty)

        /* 関数 */
        
        // 関数をセット
        func sayHi1()
        {
            print("Hi!")
        }
        // 関数を呼び出し
        sayHi1()
        
        //　返り値のある関数をセット
        func sayHi2() -> String
        {
            return "Hi!!"
        }
        //　返り値のある関数の呼び出し
        print(sayHi2())
        
        
        /* 関数(引数) */

        // 引数のある関数をセット_1
        func sayHi3(name: String)
        {
            print("hi \(name)")
        }

        // 引数のある関数を呼び出し、引数を渡す_1
        sayHi3(name: "kentaro")

        // 引数のある関数をセット_2
        // 引数名のラベルをわかりやすいものに変更する
        func sayHi4(from name: String)
        {
            print("hi \(name)")
        }

        // 引数のある関数を呼び出し、引数を渡す_2
        sayHi4(from: "kentaro")

        // 引数のある関数をセット_3
        // 引数名を省略する
        func sayHi5(_ name: String)
        {
            print("hi \(name)")
        }

        // 引数のある関数を呼び出し、引数を渡す_3
        sayHi5("kentaro")

        // 引数のある関数をセット_4
        // 引数に初期値をセットする
        func sayHi6(_ name: String = "miura")
        {
            print("hi \(name)")
        }

        // 引数のある関数を呼び出し、引数を渡す_4
        // 引数の初期値があるので渡す引数はなくても呼び出せる
        sayHi6()
        sayHi6("kentaro")
        
        
        /* inout 引数は基本定数の扱い、引数に代入したい場合の処理 */
        func add10(x : inout Int)
        {
            x = x + 10
            print(x)
        }
        
        var i2 = 10
        // inout引数の場合&がつき、かつ変数で渡さなければいけない
        add10(x: &i2)
        print(i2)
        
        
        /* クラス Class */
        
        // クラス名をセット
        class User
        {
            // プロパティセット
            let name: String
            var score: Int
            
            // initして初期値を設定する
            init() {
                self.name = "kentaro"
                self.score = 100
            }
        }
        
        //　インスタンス変数の生成
        //let user:User = User()
        let user = User()
        print(user.name)
        print(user.score)
        user.score = 200
        print(user.score)
        
        
        /* イニシャライザ */
        class User1
        {
            // プロパティセット
            let name: String
            var score: Int
            
            // init時に引数を渡す
            init(name: String, score: Int) {
                self.name = name
                self.score = score
            }
        }
        
        // 設定したい引数をセットする
        let miura = User1(name: "miura", score: 500)
        print(miura.name,miura.score)
        
        
        //引数あり
        class User2
        {
            // プロパティセット
            let name: String
            var score: Int
            
            // init時に引数を渡す、引数名ラベルを省略できる
            init(_ name: String, _ score: Int) {
                self.name = name
                self.score = score
            }
        }
        
        // 設定したい引数をセットする
        let miura1 = User2("miura1", 600)
        print(miura1.name,miura1.score)
        
        
        //引数あってもなくても
        class User3
        {
            // プロパティセット
            let name: String
            var score: Int
            
            // init時に引数を渡す、引数名ラベルを省略できる
            init(_ name: String, _ score: Int) {
                self.name = name
                self.score = score
            }
            // 引数が渡されなかった場合の処理
            init() {
                self.name = "defalut miura"
                self.score = 100
            }
        }
        
        // 設定したい引数をセットする
        let miura2 = User3("miura2", 800)
        print(miura2.name,miura2.score)
        
        // 設定したい引数なしでセットする
        let miura3 = User3()
        print(miura3.name,miura3.score)
        
        
        /* 計算プロパティ */
        class User4
        {
            let name: String
            var score : Int
            
            // ここが計算プロパティ
            var level: Int {
                get
                {
                    return Int(score / 10)
                }
                set {
                    if newValue >= 0 {
                        score = newValue * 10
                    }
                }
            }
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
            }
        }
        
        let ken = User4("Ken",100)
        print(ken.level)
        ken.level = 5
        print(ken.score)
        ken.level = -3
        print(ken.score)
        
        class User5
        {
            let name: String
            var score : Int
            
            // ここが計算プロパティ getだけの場合の書き方
            var level: Int
            {
                return Int(score / 10)
            }
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
            }
        }
        
        let kent = User5("Kent",200)
        print(kent.level)
        
        
        /* プロパティ監視 */
        class User6
        {
            let name: String
            
            var score: Int
            {
                // scoreの値が書き換わる前 - newValueが使える
                willSet
                {
                    print("\(score) -> \(newValue)")
                }
                // scoreの値が書き終わった時 - oldValuが使える
                didSet
                {
                    print("Changed: \(score - oldValue)")
                }
            }
            
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
            }
        }
        
        let kenichi = User6("kenichi", 23)
        kenichi.score = 53
        kenichi.score = 40
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

