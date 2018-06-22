//
//  Weather.swift
//  JSONDemo
//
//  Created by Apple on 2018/6/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

struct Weather: Decodable  {
    let resultcode : String?
    let reason : String?
    let result : Result
    let error_code : Int?
    
}

struct Result : Decodable {
    let sk : SK
    let today : Today
    let future : [Future]
    
}

struct SK : Decodable {
    let temp : String?
    let wind_direction : String?
    let wind_strength : String?
    let humidity : String?
    let time : String?
    
}

struct Today : Decodable {
    let temperature : String?
    let temp : String?
    let weather : String?
    let weather_id : WeatherId
    let wind : String?
    let week : String?
    let city : String?
    let date_y : String?
    let dressing_index : String?
    let dressing_advice : String?
    let uv_index : String?
    let comfort_index : String?
    let wash_index : String?
    let travel_index : String?
    let exercise_index : String?

}

struct Future : Decodable {
    let temperature : String?
    let weather : String?
    let weather_id : WeatherId
    let wind : String?
    let week : String?
    let date : String?

}

struct WeatherId : Decodable {
    let fa : String?
    let fb : String?

}
