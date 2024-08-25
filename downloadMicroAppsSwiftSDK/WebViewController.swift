//
//  WebViewController.swift
//  downloadMicroAppsSwiftSDK
//
//  Created by Apple on 25/08/2024.
//

import UIKit
import Cordova
import Capacitor

public class WebViewController: CAPBridgeViewController {
    public var assetsFolderPath: String?
    

    // MARK: - Init
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
       
       
    public override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            NotificationCenter.default.removeObserver(self)
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
      }
    
   
    
    public override func loadView() {
       if let assetsFolderPath = assetsFolderPath {
           super.loadView()
        super.view.backgroundColor = UIColor.white;

         }

       }
    
    
    public override func viewDidLoad() {
        super.viewDidLoad();
        showLoading();
        self.view.backgroundColor = UIColor.white
     
    }
  
    func showLoading() {
     }
    

}
