//
//  ViewController.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 30/09/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Web: UIWebView!
    @IBOutlet weak var image: UIImageView!
    

    
    override func viewDidLoad() {
        
            
        
    super.viewDidLoad()
        
        addSwipe()
        
       Web.loadRequest(NSURLRequest(url: URL(string: "https://media.tenor.com/qrmNZcikNhEAAAAC/where-is-my-gif.gif")!) as URLRequest)
         
    }
    
    func addSwipe() {
        let directions: [UISwipeGestureRecognizer.Direction] = [.up, .down]
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
               gesture.direction = direction
            gesture.direction = direction
            self.view.addGestureRecognizer(gesture)
        }
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case .down:
            image.image = UIImage(named: "apple.jpg")
        case .up:
            image.image = UIImage(named: "logo.jpg")
        default:
            break
        }
       
    }
}
