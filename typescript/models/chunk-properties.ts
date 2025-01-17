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
 * @interface ChunkProperties
 */
export interface ChunkProperties {
    /**
     * 
     * @type {boolean}
     * @memberof ChunkProperties
     */
    'set_page_as_boundary'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ChunkProperties
     */
    'prepend_filename_to_chunks'?: boolean;
    /**
     * 
     * @type {number}
     * @memberof ChunkProperties
     */
    'max_items_per_chunk'?: number | null;
}

