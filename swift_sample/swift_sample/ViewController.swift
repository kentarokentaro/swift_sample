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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

