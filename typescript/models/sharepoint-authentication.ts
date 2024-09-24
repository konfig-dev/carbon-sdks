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
 * @interface SharepointAuthentication
 */
export interface SharepointAuthentication {
    /**
     * 
     * @type {any}
     * @memberof SharepointAuthentication
     */
    'source': any;
    /**
     * 
     * @type {string}
     * @memberof SharepointAuthentication
     */
    'access_token': string;
    /**
     * 
     * @type {string}
     * @memberof SharepointAuthentication
     */
    'refresh_token'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof SharepointAuthentication
     */
    'tenant_name'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof SharepointAuthentication
     */
    'site_name': string;
}

