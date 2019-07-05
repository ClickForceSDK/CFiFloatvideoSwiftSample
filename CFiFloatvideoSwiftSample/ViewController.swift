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
        print("onSuccessToAdFloatVideo");
        mfloatvideo?.show();
    }
    func onFailToAdFloatVideo() {
        print("onFailToAdFloatVideo");
    }
    func onClickToAdFloatVideo() {
        print("onClickToAdFloatVideo");
    }
    func onFloatVideoEnd() {
        print("onFloatVideoEnd");
    }
    func onCloseToAdFloatVideo() {
        print("onCloseToAdFloatVideo");
    }
}
