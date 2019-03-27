//
//  ViewController.swift
//  Image Animation 01
//
//  Created by dit08 on 2019. 3. 27..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var alienImageView: UIImageView!
    var count = 0
    var direction = true//up 
    @IBAction func updateButtonPressed(_ sender: Any) {
        //print("button pressde!")
        //방향. check
        if count == 5{
            direction = false
        }else if count == 1{
            direction = true
        }
        if direction == true{
            count+=1
        }else {
            count-=1
        }
        
        alienImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = "frame\(count).png"
        /*if count < 5{
        count+=1
        /alienImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = "frame\(count).png"
        }else{
            count = 1}*/
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 초기 이미지 보이기
        alienImageView.image = UIImage(named:"frame\(count).png")
        
    }


}

