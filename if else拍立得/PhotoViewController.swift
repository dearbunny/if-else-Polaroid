//
//  PhotoViewController.swift
//  if else拍立得
//
//  Created by ROSE on 2021/5/7.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var blankView: UIView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var massageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        massageLabel.text = photoText
        var width: CGFloat = 428
        var height: CGFloat = 570
        if ratio == "1 : 1"{
            width = 326
            height = width
        } else if ratio == "3 : 4"{
            width = 326
            height = width / 16 * 9
        } else if ratio == "16 : 9"{
            width = 326
            height = width / 16 * 9
        }
        
        blankView.frame.size.height = height + 133
        subView.frame = CGRect(x: (blankView.frame.width - width)/2, y: 29, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width - width)/2, y: -(view.frame.width - height)/2, width: 428, height: 570)
        massageLabel.frame.origin.y = subView.frame.maxY + 5
        
        let blankViewHight = self.blankView.frame.size.height
        let massageY = massageLabel.frame.origin.y
        let subViewY = massageY - 5 - subView.frame.height
        
        //動畫初始位子
        self.blankView.frame.size.height = 0
        self.massageLabel.frame.origin.y = -85
        self.subView.frame.origin.y = -90 - subView.frame.height
        UIView.animate(withDuration: 2) {
            self.blankView.frame.size.height = blankViewHight
            self.massageLabel.frame.origin.y = massageY
            self.subView.frame.origin.y = subViewY
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
