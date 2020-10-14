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

    @IBAction func goButton(_ sender: Any) {
         dispImageNo += 1
        
         goButton.setTitle("進む", for: .normal)
    }
    
    @IBAction func backButton(_ sender: Any) {
         dispImageNo -= 1
        
        backButton.setTitle("戻る", for: .normal)
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
         if (timer == nil) {
               
           timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
    
            slideShowButton.setTitle("停止", for: .normal)
    
           } else {
                  
            timer.invalidate()
            timer = nil
            
           slideShowButton.setTitle("再生", for: .normal)
                
            }
        }
    
        @objc func changeImage() {
                nowIndex += 1
    
                if (nowIndex == imageArray.count) {
                    nowIndex = 0
                }
            
                imageView.image = imageArray[nowIndex]
            }
        }
                           
        func imageViewTapped(_ sender: UITapGestureRecognizer) {
             print("タップ")
        }
    
