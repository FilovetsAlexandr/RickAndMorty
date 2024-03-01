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
    ///     - completion: Обратный вызов с данными или ошибкой
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
