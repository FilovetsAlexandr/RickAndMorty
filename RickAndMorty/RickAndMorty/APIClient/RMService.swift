//
//  RMService.swift
//  RickAndMorty
//
//  Created by Alexandr Filovets on 1.03.24.
//

import Foundation

/// Основной объект сервиса API для получения данных о Рике и Морти
final class RMService {
    /// Общий экземпляр синглтона
    static let shared = RMService()
    
    /// Приватный инициализатор
    private init() {}
    
    /// Отправление запроса к API Рик и Морти
    /// - Параметры:
    ///     - request: Экземпляр запроса
    ///     - type: Тип объекта, который мы ожидаем получить в ответе
    ///     - completion: Обратный вызов с данными или ошибкой
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T,Error>) -> Void
    ) {
        
    }
}
