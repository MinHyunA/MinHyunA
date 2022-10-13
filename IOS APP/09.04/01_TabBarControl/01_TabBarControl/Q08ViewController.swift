//
//  ViewController.swift
//  Quiz08
//
//  Created by TJ on 2022/08/28.
//

import UIKit

class Q08ViewController: UIViewController { //옮겨오면서 파일네임을 바꿧다면 맞춰줘야하마

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0
    let interval = 3.0 // interval을 3초로
    let timeSelector: Selector = #selector(Q08ViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Timer 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        imgView.image = UIImage(named: imageName[numImage])
        imgTitle.text = imageName[numImage]
    }


    @objc func updateTime(){
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        imgView.image = UIImage(named: imageName[numImage])
        imgTitle.text = imageName[numImage]

    }
}

