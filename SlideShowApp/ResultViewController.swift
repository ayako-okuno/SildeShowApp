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
    
    private let maxZoomScale: CGFloat = 4.0

     private var imageView: UIImageView = {
        let image = UIImage(named: "dog1")!
        let imageView = UIImageView(image: image)
        
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       adjustImageViewSize()
          }
          
              private func adjustImageViewSize() {
              guard let size = imageView.image?.size, imageView.frame.isEmpty else { return }
              let wRate = imageView.bounds.width / size.width
              let hRate = imageView.bounds.height / size.height
              let rate = min(wRate, hRate, 1)
              imageView.frame.size = CGSize(width: size.width * rate, height: size.height * rate)
          }

          func viewForZooming(in imageView: UIImageView) -> UIView? {
              return imageView
          }
          
          private func zoomRect(for imageView: UIImageView, scale: CGFloat, center: CGPoint) -> CGRect {
              let size = CGSize(
                  width: imageView.frame.width / scale,
                  height: imageView.frame.height / scale
              )
              let rect = CGRect(
                  origin: CGPoint(
                      x: center.x - size.width / 2.0,
                      y: center.y - size.height / 2.0
                  ),
                  size: size
              )
              return rect
              
              }
      
        @IBAction func backButton(_ sender: Any) {
        }
          
    }
