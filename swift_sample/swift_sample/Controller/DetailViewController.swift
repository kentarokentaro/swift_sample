//
//  DetailViewController.swift
//  swift_sample
//
//  Created by Miura Kentaro on 2017/04/01.
//  Copyright © 2017年 Miura Kentaro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var textData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = textData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
