//
//  ViewController.swift
//  if else拍立得
//
//  Created by ROSE on 2021/5/2.
//

import UIKit

//定義比例與文字變數
var ratio = "1 : 1"
var photoText = ""

class ViewController: UIViewController {
    

    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //輸入心情
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        photoText = sender.text!
    }
    
    
    // 切換比例
    @IBAction func proportionButton(_ sender: UIButton) {
        var width: CGFloat = 428
        var height: CGFloat = 570
        
        if sender.currentTitle == "1 : 1"{
            ratio = "3 : 4"
            width = 326
            height = width / 3 * 4
        } else if sender.currentTitle == "3 : 4"{
            ratio = "16 : 9"
            width = 326
            height = width / 16 * 9
        } else {
            ratio = "1 : 1"
            width = 326
            height = width
        }
        sender.setTitle(ratio, for: UIControl.State.normal)
        subView.frame = CGRect(x: (view.frame.width-width)/2, y: 139+(view.frame.width-height)/2, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-width)/2, y: -(view.frame.width-height)/2, width: 428, height: 570)
        
        print("subView", subView.frame)
        print("imageView", imageView.frame)
        
    }
    
    // 點任意處收鍵盤
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    
}

