//
// ListRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListRequest: Codable, JSONEncodable, Hashable {

    public var dataSourceId: Int
    public var parentId: String?

    public init(dataSourceId: Int, parentId: String? = nil) {
        self.dataSourceId = dataSourceId
        self.parentId = parentId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataSourceId = "data_source_id"
        case parentId = "parent_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dataSourceId, forKey: .dataSourceId)
        try container.encodeIfPresent(parentId, forKey: .parentId)
    }
}

