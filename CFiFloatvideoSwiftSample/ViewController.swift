//
//  ViewController.swift
//  CFiFloatvideoSwiftSample
//
//  Created by CF-NB on 2019/7/4.
//  Copyright © 2019年 CF-NB. All rights reserved.
//

import UIKit
import iMFAD
class ViewController: UIViewController {
    
    var mfloatvideo:MFFloatVideo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mfloatvideo = MFFloatVideo.init();
        mfloatvideo?.bannerId = "9694";
        mfloatvideo?.delegate = self;
        mfloatvideo?.requestAd();
        
    }


}
extension ViewController:MFFloatVideoDelegate{
    func onSuccessToAdFloatVideo() {
        //接收廣告成功
        print("onSuccessToAdFloatVideo");
        mfloatvideo?.show();
    }
    func onFailToAdFloatVideo() {
        //接收廣告失敗
        print("onFailToAdFloatVideo");
    }
    func onClickToAdFloatVideo() {
        //接收點擊廣告
        print("onClickToAdFloatVideo");
    }
    func onFloatVideoEnd() {
        //廣告漂浮結束
        print("onFloatVideoEnd");
    }
    func onCloseToAdFloatVideo() {
        //接收廣告關閉
        print("onCloseToAdFloatVideo");
    }
}
