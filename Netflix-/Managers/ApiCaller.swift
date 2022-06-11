//
//  ApiCaller.swift
//  Netflix-
//
//  Created by sergio shaon on 10/6/22.
//

import Foundation

struct Constants {
    static let apiKey = "e15b5f2cef0471971fb39d1a4332f199"
    static let baseURL = "https://api.themoviedb.org"
}

enum ApiError: Error{
    case failedToGetData
}

class ApiCaller {
    static let shared = ApiCaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Results], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.apiKey)") else {return}
        print(url)
        let urlSession = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data, error == nil else{ return}
            do{
                let results = try JSONDecoder().decode(Movie.self, from: data)
                completion(.success(results.results))
            }catch{
                completion(.failure(error))
            }
        }
        urlSession.resume()
    }
}
