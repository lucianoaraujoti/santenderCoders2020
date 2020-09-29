//
//  ViewController.swift
//  TransicaoDeTela
//
//  Created by Luciano Cabo Pinho on 23/09/20.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad First")
        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear First")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear First")
        
        print("=======================")
    }
     
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear First")
    }
    
   
    @IBAction func cadastrar(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DetailVc", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailVc? =
            segue.destination as? DetailVc
        vc?.view.backgroundColor = .orange
    }
    
   
}

