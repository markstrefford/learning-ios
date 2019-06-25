//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playTone(number: Int) {
        let path = Bundle.main.path(forResource: "note\(number)", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            print ("note\(number)")
            player.play()
        }
        catch {
            print (error)
        }
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playTone(number: sender.tag)
    }
}
