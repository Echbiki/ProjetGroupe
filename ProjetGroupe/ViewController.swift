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
    
    var gif : [Gif] = []
    
    var g : Gif?
    //@IBOutlet weak var swipeView: UIView!
    //@IBOutlet weak var img: UIImageView!
    /*@IBAction func SwipeAction(_ sender: Any) {
     
     
     print("hello i swiped")
     }*/
    
    
    //@IBOutlet weak var WebView: UIWebView!
    

    
    override func viewDidLoad() {
        
        /*ApiGif.getGifs().done { gifs in
            self.gif = gifs
            
            self.g = gifs [Int.random(in: 0...gifs.count - 1)]
            
            if let gifUrl = self.g?.urls{
                if let url = URL(string: self.g!.urls){
                    self.Web.loadRequest(URLRequest(url: url))
                    
                }
            }*/
            
        
        super.viewDidLoad()
        //addSwipe()
        
        //image.image = UIImage(named: "apple.jpg")
        
        //image.isUserInteractionEnabled = true
        
        Web.loadRequest(NSURLRequest(url: URL(string: "https://media.tenor.com/qrmNZcikNhEAAAAC/where-is-my-gif.gif")!) as URLRequest)
         
    }
    
    /*func addSwipe() {
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
    
    
    
}*/
}
