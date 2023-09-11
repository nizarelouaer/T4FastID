//
//  EnrollForm.swift
//  FaceTracker
//
//  Created by QuynhNH on 9/7/23.
//  Copyright © 2023 QuynhNH. All rights reserved.
//
import Foundation
import UIKit
import T4FastID
class EnrollForm: UIViewController, T4FastIDDelegate {
    
    @IBOutlet weak var enrollForm: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enrollForm.layer.cornerRadius = 10
        
    }
    @IBAction func btnEnrollClicked(_ sender: Any) {
        let fastIDViewController = T4FastID()
        fastIDViewController.delegate = self
        fastIDViewController.modalPresentationStyle = .fullScreen
        self.present(fastIDViewController, animated: true)
    }
    
    func onCompletedWithResult(isAlive: Bool, imageDataString: String) {
        print("onCompletedWithResult: \(isAlive)")
    }
    
    func onCompletedWithError(msg: String) {
        print("onCompletedWithError: \(msg)")
    }
    
}
