//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Alexandr Filovets on 1.03.24.
//

import Foundation

///  Представляет уникальную конечную точку API
@frozen enum RMEndpoint: String {
    /// Конечная точка для получения информации о персонаже
    case character
    /// Конечная точка для получения информации о локации
    case location
    /// Конечная точка для получения информации о эпизоде
    case episode
}
