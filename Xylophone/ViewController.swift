//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
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
        sender.alpha = 0.2
        playSound(sender.currentTitle!)
             DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
        sender.alpha = 1
    }
    func playSound(_ path: String) {
        let url = Bundle.main.url(forResource: path, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
         player.play()
        
    }
    
    

}

