/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { EmbeddingAndChunk } from './embedding-and-chunk';

/**
 * 
 * @export
 * @interface EmbeddingsAndChunksResponse
 */
export interface EmbeddingsAndChunksResponse {
    /**
     * 
     * @type {Array<EmbeddingAndChunk>}
     * @memberof EmbeddingsAndChunksResponse
     */
    'results': Array<EmbeddingAndChunk>;
    /**
     * 
     * @type {number}
     * @memberof EmbeddingsAndChunksResponse
     */
    'count': number;
}

