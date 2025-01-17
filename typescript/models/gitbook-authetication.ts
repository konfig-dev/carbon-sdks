/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


/**
 * 
 * @export
 * @interface GitbookAuthetication
 */
export interface GitbookAuthetication {
    /**
     * 
     * @type {string}
     * @memberof GitbookAuthetication
     */
    'source': GitbookAutheticationSourceEnum;
    /**
     * 
     * @type {string}
     * @memberof GitbookAuthetication
     */
    'access_token': string;
    /**
     * 
     * @type {string}
     * @memberof GitbookAuthetication
     */
    'organization_name': string;
}

type GitbookAutheticationSourceEnum = 'GITBOOK'


