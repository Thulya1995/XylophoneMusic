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
        if sender.tag == 1{
            playSound(Name: "C")
            print(sender.currentTitle)
        }else if sender.tag == 2{
            playSound(Name: "D")
        }else if sender.tag == 3{
            playSound(Name: "E")
        }else if sender.tag == 4{
            playSound(Name: "F")
        }else if sender.tag == 5{
            playSound(Name: "G")
        }else if sender.tag == 6{
            playSound(Name: "A")
        }else if sender.tag == 7{
            playSound(Name: "B")
        }
        
        
        
    }

    
    func playSound(Name:String) {
        let url = Bundle.main.url(forResource: Name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

