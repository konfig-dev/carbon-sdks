/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { OpportunityStatusNullable } from './opportunity-status-nullable';

/**
 * 
 * @export
 * @interface OpportunityFilters
 */
export interface OpportunityFilters {
    /**
     * 
     * @type {string}
     * @memberof OpportunityFilters
     */
    'owner_id'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OpportunityFilters
     */
    'account_id'?: string | null;
    /**
     * 
     * @type {OpportunityStatusNullable}
     * @memberof OpportunityFilters
     */
    'status'?: OpportunityStatusNullable | null;
    /**
     * 
     * @type {string}
     * @memberof OpportunityFilters
     */
    'stage'?: string | null;
}
