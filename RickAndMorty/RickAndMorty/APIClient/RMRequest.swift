//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Alexandr Filovets on 1.03.24.
//

import Foundation

/// Объект, который делает одиночный вызов API
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        // Базовый URL
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Конечная точка
    private let endpoint: RMEndpoint
    
    /// Компоненты пути
    private let pathComponents: Set<String>
    
    /// Параметры запроса
    private let queryParameters: [URLQueryItem]
    
    /// Конструкция для запроса в String формате
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
