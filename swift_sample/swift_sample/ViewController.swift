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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

