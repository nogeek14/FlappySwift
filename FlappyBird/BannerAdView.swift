//
//  BannerAdView.swift
//  FlappyBird
//
//  Created by jameliu on 10/10/20.
//  Copyright © 2020 Fullstack.io. All rights reserved.
//

import Foundation
import GoogleMobileAds
import UIKit

class ViewController: UIViewController {

  var bannerView: GADBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // In this case, we instantiate the banner with desired ad size.
    bannerView = GADBannerView(adSize: kGADAdSizeBanner)

    addBannerViewToView(bannerView)
    
    bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
    bannerView.rootViewController = self
    bannerView.load(GADRequest())
  }

  func addBannerViewToView(_ bannerView: GADBannerView) {
    bannerView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(bannerView)
    view.addConstraints(
      [NSLayoutConstraint(item: bannerView,
                          attribute: .bottom,
                          relatedBy: .equal,
                          toItem: bottomLayoutGuide,
                          attribute: .top,
                          multiplier: 1,
                          constant: 0),
       NSLayoutConstraint(item: bannerView,
                          attribute: .centerX,
                          relatedBy: .equal,
                          toItem: view,
                          attribute: .centerX,
                          multiplier: 1,
                          constant: 0)
      ])
   }
   
}
