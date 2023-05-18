//
//  SignUpVC.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class SignUpVC: UIViewController {
    // MARK: - Properties
    var presenter:SignUpViewPresentation!
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    @IBAction func backButtonPressed(sender:UIButton) {
        presenter.dismissSignUpVC()
    }
    
}

extension SignUpVC: SignUpViewProtocol {
    
}
