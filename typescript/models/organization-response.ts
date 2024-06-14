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
 * @interface OrganizationResponse
 */
export interface OrganizationResponse {
    /**
     * 
     * @type {number}
     * @memberof OrganizationResponse
     */
    'id': number;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'name': string;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'nickname': string | null;
    /**
     * 
     * @type {boolean}
     * @memberof OrganizationResponse
     */
    'remove_branding': boolean;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'custom_branding': object | null;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'custom_limits': object | null;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_file_size': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_num_characters': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_num_tokens': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_num_embeddings': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_num_files_by_source': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'aggregate_num_files_by_file_format': object;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'file_statistics_aggregated_at': string | null;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'period_ends_at': string | null;
    /**
     * 
     * @type {boolean}
     * @memberof OrganizationResponse
     */
    'cancel_at_period_end': boolean | null;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'global_user_config': object;
    /**
     * 
     * @type {object}
     * @memberof OrganizationResponse
     */
    'file_sync_usage': object;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'created_at': string;
    /**
     * 
     * @type {string}
     * @memberof OrganizationResponse
     */
    'updated_at': string;
}

