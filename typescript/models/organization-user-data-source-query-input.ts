/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { EmbeddingsAndChunksQueryInputPagination } from './embeddings-and-chunks-query-input-pagination';
import { OrderDir } from './order-dir';
import { OrganizationUserDataSourceOrderByColumns } from './organization-user-data-source-order-by-columns';
import { OrganizationUserDataSourceQueryInputFilters } from './organization-user-data-source-query-input-filters';

/**
 * 
 * @export
 * @interface OrganizationUserDataSourceQueryInput
 */
export interface OrganizationUserDataSourceQueryInput {
    /**
     * 
     * @type {EmbeddingsAndChunksQueryInputPagination}
     * @memberof OrganizationUserDataSourceQueryInput
     */
    'pagination'?: EmbeddingsAndChunksQueryInputPagination;
    /**
     * 
     * @type {OrganizationUserDataSourceOrderByColumns}
     * @memberof OrganizationUserDataSourceQueryInput
     */
    'order_by'?: OrganizationUserDataSourceOrderByColumns;
    /**
     * 
     * @type {OrderDir}
     * @memberof OrganizationUserDataSourceQueryInput
     */
    'order_dir'?: OrderDir;
    /**
     * 
     * @type {OrganizationUserDataSourceQueryInputFilters}
     * @memberof OrganizationUserDataSourceQueryInput
     */
    'filters'?: OrganizationUserDataSourceQueryInputFilters;
}

