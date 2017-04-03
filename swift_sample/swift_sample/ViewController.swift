//
//  ViewController.swift
//  swift_sample
//
//  Created by Miura Kentaro on 2016/12/03.
//  Copyright © 2016年 Miura Kentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var mainTableView: UITableView!
    var textData: String!
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hello World
        print("Hello World")
        items.append("Hello World")
        
        /* 定数 let */
        
        // Pettern - 1
        let msg1: String
        msg1 = "Hello World"
        print("msg1 =",msg1)

        // Pettern - 2
        let msg2 = "Hello World"
        print("msg2 =",msg2)
        
        items.append("定数 let")
        
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
        
        items.append("変数 val")
        
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
        
        items.append("基本的な型 Basic Class - Int")
        items.append("基本的な型 Basic Class - Float Double")
        items.append("基本的な型 Basic Class - String")
        items.append("基本的な型 Basic Class - BOOL true/false")
        items.append("基本的な型 Basic Class - 簡単な型変換")
        
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
        items.append("演算 Calculation")
     
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
        
        items.append("if文")
        
        // 条件演算子
        result = score > 80 ? "great" : "so so ..."
        
        print("score = ",score)
        print("result = ",result)
        
        items.append("条件演算子")
        
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
        items.append("switch文")
        
        /* while */
        var n = 10
        
        // while文
        while n < 3 {
            print(n)
            n += 1
        }
        items.append("while文")
        
        // repeat while文
        repeat {
            print(n)
            n += 1
        }while n < 3
        items.append("repeat while文")
        
        /* for */
        
        // for文
        for i in 0...5 {
            if i == 3 {
                break
            }
            print(i)
        }
        items.append("for文")
        
        /* Optional type */
        let s1 :Optional<String> = nil
        let s2 :String? = nil
        
        if s1 != nil {
            print(s1!) // Optional型の変数を取り出すには!が必要
        }
        
        if s2 != nil {
            print(s2!) // Optional型の変数を取り出すには!が必要
        }
        items.append("Optional type")
        
        // Optional Binding
        // 例:s1がnilでなかった場合にvalueへ代入される
        if let value = s1
        {
            print(value)
        }
        items.append("Optional Binding")
        
        // 条件演算子のような書き方もある
        print(s1 ?? "this is nil!")
        items.append("Optional 条件演算子")
        
        /* 配列 */
        
        // 配列の生成
        //var scores : [Int] = [50, 40]
        var scores = [50, 40]
        print(scores[0]) // 50
        items.append("配列 - 生成")
        
        // 要素の書き換え
        scores[1] = 30
        
        print(scores)
        print(scores.count)
        items.append("配列 - 書き換え")
        
        // nil確認
        print(scores.isEmpty)
        items.append("配列 - nil確認")
        
        // 空の配列の生成
        var names = [String]()

        // 要素の追加
        names.append("kentaro")
        names.append("miura")
        names += ["miurakentaro"]
        
        items.append("配列 - 空の配列と要素の追加")
        
        // 出力
        for name in names {
            print(name)
        }
        
        items.append("配列 - 出力")
        
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
        
        items.append("タプル")
        
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
        
        items.append("集合")
        
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

        items.append("辞書")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        textData = items[indexPath.row]
        performSegue(withIdentifier: "showDetailViewController",sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if (segue.identifier == "showDetailViewController") {
            let detailViewController: DetailViewController = (segue.destination as? DetailViewController)!
            detailViewController.textData = textData
        }
    }
}

