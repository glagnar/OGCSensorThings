//
// Entity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Entity: JSONEncodable {

    /** ID is the system-generated identifier of an entity. ID is unique among the entities of the same entity type. */
    public var iotId: String?
    /** Self-Link is the absolute URL of an entity which is unique among all other entities. */
    public var iotSelfLink: String?
    /** Navigation-Link is the relative URL that retrives content of related entities. */
    public var iotNavigationLink: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["@iot.id"] = self.iotId
        nillableDictionary["@iot.selfLink"] = self.iotSelfLink
        nillableDictionary["@iot.navigationLink"] = self.iotNavigationLink
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
