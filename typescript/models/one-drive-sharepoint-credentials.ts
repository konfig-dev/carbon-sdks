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
 * @interface OneDriveSharepointCredentials
 */
export interface OneDriveSharepointCredentials {
    /**
     * 
     * @type {string}
     * @memberof OneDriveSharepointCredentials
     */
    'client_id': string;
    /**
     * 
     * @type {string}
     * @memberof OneDriveSharepointCredentials
     */
    'redirect_uri': string;
    /**
     * 
     * @type {string}
     * @memberof OneDriveSharepointCredentials
     */
    'client_secret'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OneDriveSharepointCredentials
     */
    'file_picker_client_id'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OneDriveSharepointCredentials
     */
    'file_picker_redirect_uri'?: string | null;
}
