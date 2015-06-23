//
//  DetailViewController.swift
//  iTunesMusicSearch
//
//  Created by Hiromu Ochiai on 2015/06/23.
//  Copyright (c) 2015年 Hiromu Ochiai. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class DetailViewController: AVPlayerViewController {
   
    var trackName: String!
    var previewUrl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = trackName // title設定
        
        if let previewUrl = previewUrl {
            player = AVPlayer(URL: NSURL(string: previewUrl))
            player.play() // 自動再生
        }
    }
}
