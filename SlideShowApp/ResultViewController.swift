//
//  ResultViewController.swift
//  SlideShowApp
//
//  Created by ELECTRO89 on 2020/10/14.
//  Copyright © 2020 ELECTRO89. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imageView2:UIImageView!
    var backButton:UIButton!
    
    var nowIndex:Int = 0
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
            screenWidth = self.view.bounds.width
            screenHeight = self.view.bounds.height
            
            let image = UIImage(named:"dog1")!
            
            width = image.size.width
            height = image.size.height
            
            imageView2 = UIImageView(image:image)
            
            scale = screenWidth / width
            let rect:CGRect = CGRect(x:20, y:30, width:374, height:561)
            
            imageView2.frame = rect;
            imageView2.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
            
            self.view.addSubview(imageView2)
    
            if(374 < screenWidth*2 ){
                scale += 0.2
            }
        
            if(561 < screenHeight*2 ){
                           scale += 0.2
            }
        
            imageView2.frame = rect;
            imageView2.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
            self.view.addSubview(imageView2)
        
            }
    
        @IBAction func backButton(_ sender: Any) {
            backButton.setTitle("戻る", for: .normal)
            nowIndex = 0
            if nowIndex == 0 {
            self.performSegue(withIdentifier: "toFirst", sender: self)
                
        }
    }
}
