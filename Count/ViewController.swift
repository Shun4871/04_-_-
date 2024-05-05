//
//  ViewController.swift
//  Count
//
//  Created by 柘植俊之介 on 2024/05/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textt: UITextField!
    @IBOutlet weak var tamagon: UIImageView!
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(){
        number += 1
        label.text = String(number)
        textt.textAlignment = .center // テキストを中央寄せに設定
        textt.font = UIFont(name: "BIZ UDMincho", size: 36)
        if number >= 50{
            label.textColor = UIColor.red
            tamagon.image = UIImage(named:"30981")
            textt.text = "ペンギンです"
        } else if number >= 40{
                label.textColor = UIColor.orange
            tamagon.image = UIImage(named:"5085")
            textt.text = "あと少し"
            } else if number >= 30{
                label.textColor = UIColor.yellow
                tamagon.image = UIImage(named:"5065")
                textt.text = "まだまだあるよ"
            } else if number >= 10{
                    label.textColor = UIColor.green
                tamagon.image = UIImage(named:"5064")
                textt.text = "がんばれ！！"
            }else {
                label.textColor = UIColor.black
                tamagon.image = UIImage(named:"5063")
                textt.text = "５０回押すといいことあるかも"
            }


    }
    
}
