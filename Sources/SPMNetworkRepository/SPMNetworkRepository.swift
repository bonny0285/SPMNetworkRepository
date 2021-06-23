import UIKit
import Combine

public class NetworkRepository {
    
    let url: URL
    let latitude: Double
    let longitude: Double
    let language: String
    
    init(url: String, latitude: Double, longitude: Double, language: String) {
        self.url = URL(string: url)!
        self.latitude = latitude
        self.longitude = longitude
        self.language = language
    }
}
