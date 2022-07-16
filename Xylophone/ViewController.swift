//
//  ViewController.swift
//  Xylophone
//
//  Created by Jacobo Corvalan on 20/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (timer) in
                sender.alpha = 1
            }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player.play()
    }
    
}

