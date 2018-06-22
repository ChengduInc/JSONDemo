//
//  ViewController.swift
//  JSONDemo
//
//  Created by Apple on 2018/6/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlStr = "http://v.juhe.cn/weather/index?format=2&cityname=%E6%88%90%E9%83%BD&key=0161e284d19ab0d37a698b779e3b29a7"
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                print(weather.result.sk.time)
                
            }catch let jsonErr {
                print("Error",jsonErr)
            }
        
        }.resume()
       
    }

  

}

