//
//  ViewController.swift
//  App_Start
//
//  Created by Lee on 2022/01/18.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func touchbutton(_ sender: Any) {
        button.backgroundColor = .  orange
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC // 타입을 DetailVC로 변경
        
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.backgroundColor = .red
        
        
    }


}

