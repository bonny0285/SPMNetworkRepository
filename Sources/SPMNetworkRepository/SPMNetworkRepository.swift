import UIKit

public class NetworkRepository {
    
    //MARK: - Properties
    
    /// The final URL that you used for fetch your data
    private let url: URL
    
    //MARK: - Lifecycle

    public init(url: URL) { self.url = url }

    //MARK: - Methods
    
    /// fetch <T: Codable> (completion: @escaping (Result<T, Error>) -> ())
    /// - Parameter completion: Can return a success or failure
    /// - Returns: Success return a generic T: Codable and Failure return an error
    public func fetch <T: Codable> (completion: @escaping (Result<T, Error>) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decode = try decoder.decode(T.self, from: data)
                    completion(.success(decode))
                } catch {
                    completion(.failure(error))
                }
                
            }
        }.resume()
    }
    
    /// fetch <T: Codable> (completion: @escaping (Result<[T], Error>) -> ())
    /// - Parameter completion: Can return a success or failure
    /// - Returns: Success return an array of generic T: Codable and Failure return an error
    public func fetch <T: Codable> (completion: @escaping (Result<[T], Error>) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decode = try decoder.decode([T].self, from: data)
                    completion(.success(decode))
                } catch {
                    completion(.failure(error))
                }
                
            }
        }.resume()
    }

}
