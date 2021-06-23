//
//  File.swift
//  
//
//  Created by Bonafede Massimiliano on 23/06/21.
//

import Foundation

//public struct JSONObject: Codable {
//    let cod: String
//    let message: Int
//    let cnt: Int
//    let list: [JSONObjectList]
//    let city: JSONObjectCity
//}
//
//public struct JSONObjectList: Codable {
//    let dt: Int
//    let main: JSONObjectListMain
//    let weather: [JSONObjectListWeather]
//    let clouds: JSONObjectListClouds
//    let wind: JSONObjectListWind
//    let visibility: Int
//    let pop: Float
//    let sys: JSONObjectListSys
//    let txt: String
//    
//    private enum CodingKeys: String, CodingKey {
//        case dt
//        case main
//        case weather
//        case clouds
//        case wind
//        case visibility
//        case pop
//        case sys
//        case txt = "dt_txt"
//    }
//}
//
//public struct JSONObjectListMain: Codable {
//    let temp: Double
//    let feels_like: Double
//    let temp_min: Double
//    let temp_max: Double
//    let pressure: Int
//    let sea_level: Int
//    let grnd_level: Int
//    let humidity: Int
//    let temp_kf: Double
//}
//
//public struct JSONObjectListWeather: Codable {
//    let id: Int
//    let main: String
//    let description: String
//    let icon: String
//}
//
//public struct JSONObjectListClouds: Codable {
//    let all: Int
//}
//
//public struct JSONObjectListWind: Codable {
//    let speed: Double
//    let deg: Int
//    let gust: Double
//}
//
//public struct JSONObjectListSys: Codable {
//    let pod: String
//}
//
//public struct JSONObjectCity: Codable {
//    let id: Int
//    let name: String
//    let coord: JSONObjectCityCoord
//    let country: String
//    let population: Int
//    let timezone: Double
//    let sunrise: Double
//    let sunset: Double
//}
//
//public struct JSONObjectCityCoord: Codable {
//    let lat: Double
//    let lon: Double
//}
