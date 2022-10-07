//
//  ApiGif.swift
//  ProjetGroupe
//
//  Created by Hamza Echbiki on 06/10/2022.
//

import Alamofire
import SwiftyJSON
import PromiseKit

class ApiGif {
    static var gifs: [Gif] = []
   
   //Fonction static pour ne pas a avoir a l'instancier a chaque fois qu'on veux la call
   static func getGifs() -> Promise<[Gif]> {
       
       
       // Gestion de l'asynchrone, on retourne une promesse
       return Promise { seal in
           
           // On fait l'appel dans la promesse
           AF.request("https://g.tenor.com/v1/trending?key=LIVDSRZULELA").response { response in
               
               
               let json = try? JSON(response.data)
               
               if let gifsJSON = json?.dictionary?["results"]?.arrayValue {
                   for itemGif in gifsJSON {
                       
                       if let dims = itemGif.dictionaryValue["media"]?.arrayValue[0].dictionaryValue["nanogif"]?.dictionaryValue["url"]?.arrayValue {
                           var dimension: [Int] = []
                           for item in dims {
                               dimension.append(item.intValue)
                           }
                           ApiGif.gifs.append(Gif(urls: itemGif.dictionaryValue["media"]!.arrayValue[0].dictionaryValue["nanogif"]?.dictionaryValue["url"]?.stringValue ?? "", dims: dimension))
                       }
                      
                   }
               }
               
               seal.fulfill(gifs)
           }
       }
   }
}
