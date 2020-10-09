//
//  ViewController.swift
//  Animation2
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        let image = UIImageView(image: UIImage(named: "image"))
        //透明度を0にする
        image.alpha = 0
        //0.2倍サイズにする
        let scaleTransform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        //-π/2回転する
        let rotationform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        //トランスフォームに足し合わせる
        let newTransform = scaleTransform.concatenating(rotationform)
        image.transform = newTransform
        
        image.center = sender.location(in: self.view)
        view.addSubview(image)
        
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseOut],
        animations: {
            image.alpha = 1.0
            //変形を戻す
            image.transform = .identity
        },
        completion: nil)
        
    }
    
}

