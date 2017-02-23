//
//  ThirdViewController.swift
//  LPFRootNav
//
//  Created by Roc on 2017/2/23.
//  Copyright © 2017年 Roc. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ThirdVc"
        self.view.backgroundColor = UIColor.white
        self.setupPopRotButton()
    }
    
    
    func setupPopRotButton(){
        let popBtn = UIButton(type: .custom)
        popBtn.frame = CGRect(x: 0, y: 0, width: 150, height: 40)
        popBtn.center = self.view.center
        popBtn.backgroundColor = UIColor.red
        popBtn.setTitle("pop到RotVc", for: .normal)
        popBtn.addTarget(self, action:  #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(popBtn)
    }
    
    func buttonAction()  {
       _ =  self.navigationController?.popToRootViewController(animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
