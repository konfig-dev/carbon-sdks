/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { DataSourceTypeNullable } from './data-source-type-nullable';

/**
 * 
 * @export
 * @interface OrganizationUserDataSourceFilters
 */
export interface OrganizationUserDataSourceFilters {
    /**
     * 
     * @type {DataSourceTypeNullable}
     * @memberof OrganizationUserDataSourceFilters
     */
    'source'?: DataSourceTypeNullable | null;
    /**
     * 
     * @type {Array<number>}
     * @memberof OrganizationUserDataSourceFilters
     */
    'ids'?: Array<number> | null;
    /**
     * 
     * @type {boolean}
     * @memberof OrganizationUserDataSourceFilters
     */
    'revoked_access'?: boolean | null;
}

