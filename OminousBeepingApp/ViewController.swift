import UIKit

let INTERVAL: Double = 1/8

class ViewController: UIViewController {
    
    let t = ToneOutputUnit()

    @objc func blip() {
        t.setFrequency(freq: 380)
        t.setToneVolume(vol: 50)
        t.enableSpeaker()
        t.setToneTime(t: INTERVAL)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: INTERVAL*2.2, target: self, selector: #selector(blip), userInfo: nil, repeats: true)
        
        let img = UIImage(named: "f.png")
        view.layer.contents = img?.cgImage
        
    }
}

