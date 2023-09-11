# T4FastID
Fast Identification using our iOS SDK. 
To import this package into your Swift project please follow below steps

- 1: From your project, choose **File -> Add Packages...**
- 2: In the Add Packages windows, type **T4FastID** in the Search box
- 3: Select the Package then choose **Add Package**
- 4: Now, from your Project, just simply use it by **import T4FastID**
- 5: Inherit the delegate **T4FastIDDelegate**
- 6: Implement 2 functions from delegate
- **onCompletedWithResult**
- => This callback will be triggered and return **isLive** and **Image data in base64 encoded** whenever the API get responded
- **onCompletedWithError**
- => This callback will be triggered and return Error message when the API has error such as network connection
- Below is the example code
````
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
````
