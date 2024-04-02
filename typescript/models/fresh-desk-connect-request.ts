/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { EmbeddingGeneratorsNullable } from './embedding-generators-nullable';

/**
 * 
 * @export
 * @interface FreshDeskConnectRequest
 */
export interface FreshDeskConnectRequest {
    /**
     * 
     * @type {object}
     * @memberof FreshDeskConnectRequest
     */
    'tags'?: object | null;
    /**
     * 
     * @type {string}
     * @memberof FreshDeskConnectRequest
     */
    'domain': string;
    /**
     * 
     * @type {string}
     * @memberof FreshDeskConnectRequest
     */
    'api_key': string;
    /**
     * 
     * @type {number}
     * @memberof FreshDeskConnectRequest
     */
    'chunk_size'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof FreshDeskConnectRequest
     */
    'chunk_overlap'?: number | null;
    /**
     * 
     * @type {boolean}
     * @memberof FreshDeskConnectRequest
     */
    'skip_embedding_generation'?: boolean | null;
    /**
     * 
     * @type {EmbeddingGeneratorsNullable}
     * @memberof FreshDeskConnectRequest
     */
    'embedding_model'?: EmbeddingGeneratorsNullable | null;
    /**
     * 
     * @type {boolean}
     * @memberof FreshDeskConnectRequest
     */
    'generate_sparse_vectors'?: boolean | null;
    /**
     * 
     * @type {boolean}
     * @memberof FreshDeskConnectRequest
     */
    'prepend_filename_to_chunks'?: boolean | null;
    /**
     * 
     * @type {boolean}
     * @memberof FreshDeskConnectRequest
     */
    'sync_files_on_connection'?: boolean | null;
    /**
     * 
     * @type {string}
     * @memberof FreshDeskConnectRequest
     */
    'request_id'?: string | null;
}

