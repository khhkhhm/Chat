//
//  SecondViewController.swift
//  TestTest
//
//  Created by p.a.belov on 16/02/2020.
//  Copyright © 2020 p.a.belov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    func LogViewLifecycle(_ fname: String) {
        #if DEBUG
            print(fname)
        #endif
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LogViewLifecycle(#function)
        
    }
    
    
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           LogViewLifecycle(#function)
       }
       
       override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           LogViewLifecycle(#function)
       }
       
       override func viewWillLayoutSubviews() {
           super.viewWillLayoutSubviews()
           LogViewLifecycle(#function)
       }
       
       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           LogViewLifecycle(#function)
       }

       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           LogViewLifecycle(#function)
       }
       
       override func viewDidDisappear(_ animated: Bool) {
           super.viewDidDisappear(animated)
           LogViewLifecycle(#function)
       }
}
