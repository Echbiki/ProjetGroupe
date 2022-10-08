//
//  GenerationView.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 07/10/2022.
//

import Foundation
import UIKit

class GenerationView:UIViewController{
    
    var gif : [Gif] = []
    
    var g : Gif?
    var url: String = ""
    @IBOutlet weak var testgif: UIImageView!
    
    //var currentGif: Gif?
    
    override func viewDidLoad() {
        addSwipe()
        
        ApiGif.getGifs().done { gifs in
            self.gif = gifs
            
            self.g = gifs [Int.random(in: 0...gifs.count)]
            
            if let gifUrl = self.g?.urls{
                print(gifUrl)
                self.url = gifUrl
                
            super.viewDidLoad()
        }
            print(self.url)
            self.testgif.image = UIImage.gifImageWithURL(self.url)
}
    }
    
    //Fonction swipe vers le haut et vers le bas
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
            ApiGif.getGifs().done { gifs in
                self.gif = gifs
                
                self.g = gifs [Int.random(in: 0...gifs.count)]
                
                if let gifUrl = self.g?.urls{
                    print(gifUrl)
                    self.url = gifUrl
                    
                super.viewDidLoad()
            }
                print(self.url)
                self.testgif.image = UIImage.gifImageWithURL(self.url)
            }
        case .up:
                ApiGif.getGifs().done { gifs in
                    self.gif = gifs
                    
                    self.g = gifs [Int.random(in: 0...gifs.count)]
                    
                    if let gifUrl = self.g?.urls{
                        print(gifUrl)
                        self.url = gifUrl
                        
                    super.viewDidLoad()
                }
                    print(self.url)
                    self.testgif.image = UIImage.gifImageWithURL(self.url)
                }
        default:
            break
        }
    }
}

