import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        /*if sender.tag == 1{
            playSound(Name: "C")
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
        }*/
        
        playSound(Name: sender.currentTitle!)
        sender.alpha = 0.5
        
        //Code should execute after 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
        sender.alpha = 1.0
        
        }
        
    }

    
    func playSound(Name:String) {
        let url = Bundle.main.url(forResource: Name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

