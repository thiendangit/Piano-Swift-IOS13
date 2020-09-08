

import UIKit
import AVFoundation

var bombSoundEffect: AVAudioPlayer?

class ViewController: UIViewController {
    
    func playSound(forResource : String) -> Void {
        let path = Bundle.main.path(forResource: forResource, ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        do {
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
        } catch {
            print("can't play file!")
        }
    }
    
    @IBAction func C(_ sender: Any) {
        playSound(forResource: "C")
    }
    
    @IBAction func D(_ sender: Any) {
        playSound(forResource: "D")
    }
    
    @IBAction func E(_ sender: Any) {
        playSound(forResource: "E")
    }
    
    
    @IBAction func F(_ sender: Any) {
        playSound(forResource: "F")
    }
    
    
    @IBAction func G(_ sender: Any) {
        playSound(forResource: "G")
    }
    
    
    @IBAction func A(_ sender: Any) {
        playSound(forResource: "A")
    }
    
    
    @IBAction func B(_ sender: Any) {
        playSound(forResource: "B")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

