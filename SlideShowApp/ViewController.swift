//
//  ViewController.swift
//  SlideShowApp
//
//  Created by ELECTRO89 on 2020/10/14.
//  Copyright © 2020 ELECTRO89. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slideShowButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var goButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var nowIndex:Int = 0
    var timer: Timer!
    var dispImageNo = 0
    
    var imageArray:[UIImage] = [
        UIImage(named: "dog1")!,
        UIImage(named: "dog2")!,
        UIImage(named: "dog3")!
    ]
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    }

    let imageName = ["dog1", "dog2", "dog3"]
    var changeImgNo = 0
    
    @IBAction func goButton(_ sender: Any) {
          if changeImgNo == 0 {
             changeImgNo = 1
                } else if changeImgNo == 1 {
                    changeImgNo = 2
                } else if changeImgNo == 2 {
                    changeImgNo = 0
                }
                let name = imageName[changeImgNo]
                imageView.image = UIImage(named: name)
          goButton.setTitle("進む", for: .normal)
    }
    
    @IBAction func backButton(_ sender: Any) {
          if changeImgNo == 1 {
                     changeImgNo = 0
                        } else if changeImgNo == 2 {
                            changeImgNo = 1
                        } else if changeImgNo == 0 {
                            changeImgNo = 2
                        }
                        let name = imageName[changeImgNo]
                        imageView.image = UIImage(named: name)
         backButton.setTitle("戻る", for: .normal)
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
         if (timer == nil) {
               
           timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
    
            slideShowButton.setTitle("停止", for: .normal)
            
            goButton.isEnabled = false
            
            backButton.isEnabled = false
            
           } else {
                  
            timer.invalidate()
            timer = nil
            
           slideShowButton.setTitle("再生", for: .normal)
        
            goButton.isEnabled = true
            
            backButton.isEnabled = true
                
            }
        }
    
        @objc func changeImage() {
                nowIndex += 1
    
                if (nowIndex == imageArray.count) {
                    nowIndex = 0
                }
            
                imageView.image = imageArray[nowIndex]
            }
    
    @IBAction func tapAction(_ sender: Any) {
        nowIndex = 0
        if nowIndex == 0 {
        self.performSegue(withIdentifier: "toSecond", sender: self)
            
            } else {
                  
            timer.invalidate()
            timer = nil
    }
        
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
  }

