//
//  ViewController.swift
//  CaiassoEdit
//
//  Created by Paulo Rosa on 15/02/20.
//  Copyright © 2020 Paulo Rosa. All rights reserved.
//

import UIKit
import SwiftyDropbox


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        myButtonInControllerPressed()
    }
    
    private func myButtonInControllerPressed() {
        DropboxClientsManager.authorizeFromController(UIApplication.shared,
                                                      controller: self,
                                                      openURL: { (url: URL) -> Void in
                                                        UIApplication.shared.canOpenURL(url)
                                                      })
    }

}

