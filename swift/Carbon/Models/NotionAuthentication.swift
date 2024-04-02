//
// NotionAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotionAuthentication: Codable, JSONEncodable, Hashable {

    public var source: AnyCodable?
    public var accessToken: String
    public var workspaceId: String

    public init(source: AnyCodable?, accessToken: String, workspaceId: String) {
        self.source = source
        self.accessToken = accessToken
        self.workspaceId = workspaceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case workspaceId = "workspace_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encode(workspaceId, forKey: .workspaceId)
    }
}

