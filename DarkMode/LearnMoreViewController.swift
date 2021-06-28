//
//  LearnMoreViewController.swift
//  DarkMode
//
//  Created by talgat on 6/28/21.
//

import Foundation
import  UIKit

class LearnMoreViewController: StartViewController {
    
    
//    override func loadView() {
//        view = UIView()
//        view.backgroundColor = .white
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }

    @IBAction func doneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
