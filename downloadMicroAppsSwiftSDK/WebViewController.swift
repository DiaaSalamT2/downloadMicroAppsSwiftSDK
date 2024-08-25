//
//  WebViewController.swift
//  downloadMicroAppsSwiftSDK
//
//  Created by Apple on 25/08/2024.
//

import UIKit
import Cordova
import Capacitor

open class WebViewController: CAPBridgeViewController {
    public var assetsFolderPath: String?
    

    // MARK: - Init
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
       
       
    open override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            NotificationCenter.default.removeObserver(self)
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
      }
    
   
    
    open override func loadView() {
       if let assetsFolderPath = assetsFolderPath {
           super.assetsFolder = assetsFolderPath
           super.loadView()
        super.view.backgroundColor = UIColor.white;

         }

       }
    
    
    open override func viewDidLoad() {
        super.viewDidLoad();
        showLoading();
        self.view.backgroundColor = UIColor.white
     
    }
  
    func showLoading() {
     }
    

}
