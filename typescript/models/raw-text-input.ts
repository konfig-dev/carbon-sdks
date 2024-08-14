/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { ColdStorageProps } from './cold-storage-props';
import { EmbeddingGeneratorsNullable } from './embedding-generators-nullable';

/**
 * 
 * @export
 * @interface RawTextInput
 */
export interface RawTextInput {
    /**
     * 
     * @type {string}
     * @memberof RawTextInput
     */
    'contents': string;
    /**
     * 
     * @type {string}
     * @memberof RawTextInput
     */
    'name'?: string | null;
    /**
     * 
     * @type {number}
     * @memberof RawTextInput
     */
    'chunk_size'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof RawTextInput
     */
    'chunk_overlap'?: number | null;
    /**
     * 
     * @type {boolean}
     * @memberof RawTextInput
     */
    'skip_embedding_generation'?: boolean;
    /**
     * 
     * @type {number}
     * @memberof RawTextInput
     */
    'overwrite_file_id'?: number | null;
    /**
     * 
     * @type {EmbeddingGeneratorsNullable}
     * @memberof RawTextInput
     */
    'embedding_model'?: EmbeddingGeneratorsNullable | null;
    /**
     * 
     * @type {boolean}
     * @memberof RawTextInput
     */
    'generate_sparse_vectors'?: boolean | null;
    /**
     * 
     * @type {ColdStorageProps}
     * @memberof RawTextInput
     */
    'cold_storage_params'?: ColdStorageProps;
}

