//
//  ViewController.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 30/09/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    //@IBOutlet weak var swipeView: UIView!
    //@IBOutlet weak var img: UIImageView!
    /*@IBAction func SwipeAction(_ sender: Any) {
     
     print("hello i swiped")
     }*/
    
    
    //@IBOutlet weak var WebView: UIWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipe()
        
        image.image = UIImage(named: "apple.jpg")
        
        image.isUserInteractionEnabled = true
        
        /*WebView.loadRequest(NSURLRequest(url: URL(string: "https://media.tenor.com/gISSJc70lH4AAAAC/yeet-naruto.gif")!) as URLRequest)
         Do any additional setup after loading the view.*/
    }
    
    func addSwipe() {
        let directions: [UISwipeGestureRecognizer.Direction] = [.right, .left, .up, .down]
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
               gesture.direction = direction
            gesture.direction = direction
            self.view.addGestureRecognizer(gesture)
        }
    }

    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case .right:
            print("Swiped right")
        case .down:
            image.image = UIImage(named: "apple.jpg")
        case .left:
            print("Swiped left")
        case .up:
            image.image = UIImage(named: "logo.jpg")
        default:
            break
        }
    }
    
    
    
}
