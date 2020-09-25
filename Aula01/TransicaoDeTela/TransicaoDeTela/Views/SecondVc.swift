//
//  SecondVc.swift
//  TransicaoDeTela
//
//  Created by Luciano Cabo Pinho on 23/09/20.
//

import UIKit

class SecondVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad Second")

        // Do any additional setup after loading the view.
    }
   

    @IBAction func cliclouVoltou(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Second")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Second")
        
        print("=======================")
    }
     
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear Second")
    }
    
}
