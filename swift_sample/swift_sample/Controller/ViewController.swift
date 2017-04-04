//
//  ViewController.swift
//  swift_sample
//
//  Created by Miura Kentaro on 2016/12/03.
//  Copyright © 2016年 Miura Kentaro. All rights reserved.
//

import UIKit

/* プロトコル */
protocol Printable
{
    //　プロトコル内はvarで宣言
    var type: String { get }
    var count: Int { get set}
    func printout()
}

/* 拡張 */

// 拡張元クラス
class User12
{
    let name: String
    init(_ name: String)
    {
        self.name = name
    }
}

// 拡張プロトコル
extension Printable
{
    func printout()
    {
        print("now printing....")
    }
}

//　拡張クラス
extension User12: Printable
{
    var count: Int {
        get {
            return self.count
        }
        set {
        }
    }

    var type: String {
        return self.type
    }

    var username: String
    {
        return self.name
    }
    
    func sayHello()
    {
        print("Hello!")
    }
}

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
        
        /* クラスを使う */
        class User7
        {
            let name: String
            var score: Int
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
            }
            
            // クラスメソッド
            func sayHi()
            {
                print("Hi! \(name)")
            }
            func sayMsg1(msg:String)
            {
                print("\(msg) \(name)")
            }
            func sayMsg2(_ msg:String)
            {
                print("\(msg) \(name)")
            }
        }
        
        let kenken = User7("kenken",200)
        kenken.sayHi()
        kenken.sayMsg1(msg: "hola")
        kenken.sayMsg2("holu")
        
        
        /* クラス継承 class inheritance */
        // User8 -> AdminiUser
        
        
        // 継承元クラス
        class User8
        {
            let name: String
            var score: Int
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
            }
            func sayHi()
            {
                print("Hi! \(name)")
            }
        }
        
        // 継承クラス
        class AdminiUser: User8
        {
            // 追加でクラスメッソドをセット
            func sayHello()
            {
                print("Hello! \(name)")
            }
            // 継承元のクラスメソッドを上書き override
            // ※finalも使える
            override func sayHi()
            {
                print("[Admin] Hi! \(name)")
            }
        }
        
        let kensuke = User8("kensuke", 80)
        print(kensuke.name)
        print(kensuke.score)
        kensuke.sayHi()
        
        let kensuken = AdminiUser("kensuken", 100)
        print(kensuken.name)
        print(kensuken.score)
        kensuken.sayHi()
        kensuken.sayHello()
        
        
        /* 型プロパティ 型メソッド */
        class User9
        {
            let name: String
            var score: Int
            
            // 型プロパティ
            static var count = 0
            
            init(_ name:String, _ score: Int)
            {
                self.name = name
                self.score = score
                User9.count += 1
            }
            
            // 型メソッド staticをつけるとoverrideできない
            static func getInfo()
            {
                print("\(count) instances")
            }
            
            // 型メソッド classをつけるとoverrideできる
            class func getInfo1()
            {
                print("\(count) instances")
            }

        }
        
        // 継承クラス
        class AdminiUser1: User9
        {
            // 型メソッドの継承
            override class func getInfo1()
            {
                print("[Adminn]\(count) instances")
            }
        }
        
        // 継承元
        User9.getInfo()
        let kenta = User9("kenta",99)
        User9.getInfo()
        print(kenta.name)
        
        // 継承
        AdminiUser1.getInfo()
        AdminiUser1.getInfo1()
        let kentas = AdminiUser1("kentas",199)
        AdminiUser1.getInfo()
        AdminiUser1.getInfo1()
        print(kentas.name)
        
        
        /* クラスキャスト */
        class User10
        {
            let name: String
            init(_ name: String)
            {
                self.name = name
            }
        }
        
        class AdminiUser2:User10
        {
        
        }
        
        let kenn = User10("kenn")
        let kennn = AdminiUser2("kennn")

        // 同じ型に入れ込む
        let users: [User10] = [kenn,kennn]
        
        // 特定の方だけを抜き出す
        for user in users {
            //if let u = user as? AdminiUser2
            //{
            //    print(u.name)
            //}
            
            // isは型チェック
            if user is AdminiUser2
            {
                // asは型割り当て
                let u = user as! AdminiUser2
                print(u.name)
            }
        }
        

        /* プロトコル */
        class User11: Printable
        {
            let name: String
            let type = "laser"
            var count = 0
            init(_ name: String)
            {
                self.name = name
            }
            func printout()
            {
                count += 1
                print("\(type) \(count)")
            }
        }
        let kemkem = User11("kemkem")
        kemkem.printout()
        kemkem.printout()
        kemkem.printout()
        
        
        /* 拡張 */
        let kevkev = User12("kemkem")
        print(kevkev.username)
        kevkev.sayHello()
        kevkev.printout()

        
        /* 値型と参照型 */

        // 値型
        var original1 = 10
        let copy1 = original1
        //  代入すると値そのものが渡される
        original1 = 20
        print(original1)
        print(copy1)
        
        
        // 参照型
        class User13
        {
            var name: String
            init(_ name: String)
            {
                self.name = name
            }
        }
        
        //  代入するとoriginalが格納されている場所が渡される
        let original2 = User13("kerker")
        let copy2 = original2

        original2.name = "kebkeb"
        print(original2.name)
        print(copy2.name) //あくまで格納されている情報を見に行っているので実際にはoriginal2の値が表示される
        
        /* 構造体 */
        
        // 構造体クラスの宣言
        struct User14
        {
            var name: String
            init(_ name: String)
            {
                self.name = name
            }
            // メソッドにて値を書き換えるにはmutatingが必要
            mutating func changeName()
            {
                //.uppercasedは文字列を大文字にして返すプロパティメソッド
                self.name = name.uppercased()
            }
        }
        
        // 構造体はクラスとほぼ同機能であるが、値型であり継承ができない。
        // 拡張する場合はexteinsionやprotocolを使う
        // 値を変えたくないデータを取り扱う場合に用いられる
        var original3 = User14("keckec")
        var copy3 = original3
        
        original3.name = "kedked"
        print(original3.name)
        print(copy3.name)
        copy3.changeName()
        print(copy3.name)

        
        /* 列挙型 */
        enum Direction
        {
            case right
            case left
        }
        
        var dir: Direction
//        dir = Direction.right
        let randomInt = Int(arc4random() % 2)
        if randomInt == 0
        {
            // 列挙型名を省略できる
//            dir = Direction.right
            dir = .right
        }
        else
        {
            // 列挙型名を省略できる
//            dir = Direction.left
            dir = .left
        }

        // 列挙型を使いかつcaseを全て使ってない場合、switch文でWarningが出る
        switch dir {
        case .right:
            print("right")
        case .left:
            print("left")
        }
        
        
        /* ジェネリクス */
        
        // ジェネリクスの書き方をすればどの型の引数にも対応した関数となる
        func getThree<T>(x: T)
        {
            print(x)
            print(x)
            print(x)
        }
        
        // Int型
        getThree(x: 5)
        // String型
        getThree(x: "hello")
        // クラス
        let getThreeUser = User13("getThreeUser")
        getThree(x: getThreeUser)
        getThree(x: getThreeUser.name)
        
        
        /* サブスクリプト */
        
        // クラスにインデックスをつける
        class Team
        {
            var members = ["miura","kentaro","miurakentaro"]
            subscript(index: Int) -> String
            {
                get
                {
                    return members[index]
                }
                set
                {
                    members.insert(newValue, at: index)
                }
            }
        }
        
        let giants = Team()
        giants[0] = "myura"
        print(giants[1])
        giants[3] = "kentaroll"
        print(giants[3])
        
        
        /* guard */
        
        func sayHi7(_ msg: String?)
        {
            if let s = msg
            {
                print(s)
            }
            else
            {
                print("value not set - sayHi7")
            }
        }
        
        // early return, early exit
        func sayHi8(_ msg: String?)
        {
            if msg == nil
            {
                print("value not set - sayHi8")
                return
            }
            print(msg!)
        }

        func sayHi9(_ msg: String?)
        {
            guard let s = msg else
            {
                print("value not set - sayHi9")
                return
            }
            print(s)
        }
        
        sayHi7(nil)
        sayHi7("hello1")
        sayHi8(nil)
        sayHi8("hello2")
        sayHi9(nil)
        sayHi9("hello3")

        
        /* 例外処理 */
        
        // ログインエラーステータスを宣言、Errorプロトコルを使用
        enum LoginError: Error
        {
            case emptyName
            case shortName
        }
        class User15
        {
            let name: String
            init(_ name: String) {
                self.name = name
            }
            
            // throws 例外処理
            func login() throws
            {
                guard name != "" else
                {
                    throw LoginError.emptyName
                }
                guard name.characters.count > 5 else
                {
                    throw LoginError.shortName
                }
                print("login success")
            }
            
        }
        
        let userExep = User15("kentaro")
        // 例外処理をキャッチする処理
        do
        {
            //クラスメソッド呼び出し
            try userExep.login()
        }
        // 空文字
        catch LoginError.emptyName
        {
            print("please entry your name")
        }
        // 文字数不足
        catch LoginError.shortName
        {
            print("too short")
        }
        // defaultとして必要
        catch
        {
            print("Unknown Error")
        }
        
        
        /* Optional Chaining */
        class User16
        {
            var name: String? = ""
        }
        
        // 型名の後ろに？つけるのはOptional型宣言
        let user16: User16?
        user16 = User16()
        
        // 変数名の後ろに?をつけるのはOptional Chaining　→ nilチェック → nilで落ちないようにする
        user16?.name = ""
        if let sss = user16?.name?.uppercased() {
            print(sss)
        }
        
        
        /* 暗黙的アンラップオプショナル型 */
        
        // 通常Optional型で宣言
        let msg5: String?
        msg5 = "hello"

        if msg5 != nil
        {
            // 通常は取り出す際には案ラップする !をつける
            print(msg5!)
        }
        
        // 暗黙的アンラップオプショナル型で宣言
        let msg6: ImplicitlyUnwrappedOptional<String>
        msg6 = "heello"
        // 暗黙的アンラップオプショナル型なので !いらない
        print(msg6)
        
        // 暗黙的アンラップオプショナル型で宣言(省略)
        let msg7: String!
        msg7 = "heello"
        // 暗黙的アンラップオプショナル型なので !いらない
        print(msg7)
        
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

