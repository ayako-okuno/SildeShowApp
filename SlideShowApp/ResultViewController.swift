//
//  ResultViewController.swift
//  SlideShowApp
//
//  Created by ELECTRO89 on 2020/10/14.
//  Copyright © 2020 ELECTRO89. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
          }
    @IBAction func Button(_ sender: UIButton) {
          self.performSegue(withIdentifier: "toFirst", sender: nil)
          }
          
      }

