//
//  SavedViewController.swift
//  GList
//
//  Created by Patrick Bellot on 12/10/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit
import GoogleMobileAds

class SavedViewController: UIViewController {
  
  /*This VC is a list of our last 5 grocery lists. Later on, we can add a barcode scanner or something that helps total up our shopping cart. Ads will be placed here*/
    
  @IBOutlet weak var bannerView: GADBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()

    bannerView.adUnitID = "ca-app-pub-3489095111043969/2887130537"
    bannerView.rootViewController = self
    bannerView.load(GADRequest())
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
