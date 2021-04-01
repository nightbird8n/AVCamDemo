//
//  ViewController.swift
//  AVCamDemo
//
//  Created by Admin on 2021/4/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cameraButtonClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CamViewController") as! CamViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    

}

