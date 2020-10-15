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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let image = UIImage(named:"dog1big")!
            imageView2 = UIImageView(image:image)
            
            }
    
        @IBAction func backButton(_ sender: Any) {
            backButton.setTitle("戻る", for: .normal)
            nowIndex = 0
            if nowIndex == 0 {
            self.performSegue(withIdentifier: "toFirst", sender: self)
                
        }
    }
}
