//
//  WebServices.swift
//  News
//
//  Created by Henrique Marques on 28/02/22.
//

import Foundation


class WebServices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                
            } else if let data = data {
                
                
                let arcticleList = try? JSONDecoder().decode(ArcticleList.self, from: data)
                
                if let arcticleList = arcticleList {
                    completion(arcticleList.articles)
                }
                
                print(arcticleList?.articles as Any)
            }
        }).resume()
    }
}
