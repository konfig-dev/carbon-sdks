/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { DataSourceLastSyncActions } from './data-source-last-sync-actions';
import { DataSourceSyncStatuses } from './data-source-sync-statuses';
import { DataSourceType } from './data-source-type';

/**
 * 
 * @export
 * @interface OrganizationUserDataSourceAPI
 */
export interface OrganizationUserDataSourceAPI {
    /**
     * 
     * @type {number}
     * @memberof OrganizationUserDataSourceAPI
     */
    'id': number;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'data_source_external_id': string | null;
    /**
     * 
     * @type {DataSourceType}
     * @memberof OrganizationUserDataSourceAPI
     */
    'data_source_type': DataSourceType;
    /**
     * 
     * @type {DataSourceSyncStatuses}
     * @memberof OrganizationUserDataSourceAPI
     */
    'sync_status': DataSourceSyncStatuses;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'source_items_synced_at': string | null;
    /**
     * 
     * @type {number}
     * @memberof OrganizationUserDataSourceAPI
     */
    'organization_user_id': number;
    /**
     * 
     * @type {number}
     * @memberof OrganizationUserDataSourceAPI
     */
    'organization_id': number;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'organization_supplied_user_id': string;
    /**
     * 
     * @type {boolean}
     * @memberof OrganizationUserDataSourceAPI
     */
    'revoked_access': boolean;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'last_synced_at': string;
    /**
     * 
     * @type {DataSourceLastSyncActions}
     * @memberof OrganizationUserDataSourceAPI
     */
    'last_sync_action': DataSourceLastSyncActions;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'created_at': string;
    /**
     * 
     * @type {string}
     * @memberof OrganizationUserDataSourceAPI
     */
    'updated_at': string;
}

