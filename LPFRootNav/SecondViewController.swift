//
//  SecondViewController.swift
//  LPFRootNav
//
//  Created by Roc on 2017/2/23.
//  Copyright © 2017年 Roc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SecondVc"
        self.view.backgroundColor = UIColor.white
        self.setupPushButton()
    }

    
    func setupPushButton(){
        let pushBtn = UIButton(type: .custom)
        pushBtn.frame = CGRect(x: 0, y: 0, width: 150, height: 40)
        pushBtn.center = self.view.center
        pushBtn.backgroundColor = UIColor.red
        pushBtn.setTitle("push到thirdVc", for: .normal)
        pushBtn.addTarget(self, action:  #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(pushBtn)
    }
    
    func buttonAction()  {
        let thirdVc = ThirdViewController()
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
