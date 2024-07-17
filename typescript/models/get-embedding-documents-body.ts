/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { EmbeddingGeneratorsNullable } from './embedding-generators-nullable';
import { FileContentTypesNullable } from './file-content-types-nullable';
import { HybridSearchTuningParamsNullable } from './hybrid-search-tuning-params-nullable';
import { RerankParamsNullable } from './rerank-params-nullable';
import { Tags1 } from './tags1';

/**
 * 
 * @export
 * @interface GetEmbeddingDocumentsBody
 */
export interface GetEmbeddingDocumentsBody {
    /**
     * A set of tags to limit the search to. Deprecated and may be removed in the future.
     * @type {{ [key: string]: Tags1; }}
     * @memberof GetEmbeddingDocumentsBody
     */
    'tags'?: { [key: string]: Tags1; } | null;
    /**
     * Query for which to get related chunks and embeddings.
     * @type {string}
     * @memberof GetEmbeddingDocumentsBody
     */
    'query': string;
    /**
     * Optional query vector for which to get related chunks and embeddings. It must have been         generated by the same model used to generate the embeddings across which the search is being conducted. Cannot         provide both `query` and `query_vector`.
     * @type {Array<number>}
     * @memberof GetEmbeddingDocumentsBody
     */
    'query_vector'?: Array<number> | null;
    /**
     * Number of related chunks to return.
     * @type {number}
     * @memberof GetEmbeddingDocumentsBody
     */
    'k': number;
    /**
     * Optional list of file IDs to limit the search to
     * @type {Array<number>}
     * @memberof GetEmbeddingDocumentsBody
     */
    'file_ids'?: Array<number> | null;
    /**
     * Optional list of parent file IDs to limit the search to. A parent file describes a file to which         another file belongs (e.g. a folder)
     * @type {Array<number>}
     * @memberof GetEmbeddingDocumentsBody
     * @deprecated
     */
    'parent_file_ids'?: Array<number> | null;
    /**
     * Flag to control whether or not to include all children of filtered files in the embedding search.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'include_all_children'?: boolean;
    /**
     * A set of tags to limit the search to. Use this instead of `tags`, which is deprecated.
     * @type {object}
     * @memberof GetEmbeddingDocumentsBody
     */
    'tags_v2'?: object | null;
    /**
     * Flag to control whether or not to include tags for each chunk in the response.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'include_tags'?: boolean | null;
    /**
     * Flag to control whether or not to include embedding vectors in the response.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'include_vectors'?: boolean | null;
    /**
     * Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'include_raw_file'?: boolean | null;
    /**
     * Flag to control whether or not to perform hybrid search.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'hybrid_search'?: boolean | null;
    /**
     * 
     * @type {HybridSearchTuningParamsNullable}
     * @memberof GetEmbeddingDocumentsBody
     */
    'hybrid_search_tuning_parameters'?: HybridSearchTuningParamsNullable | null;
    /**
     * 
     * @type {FileContentTypesNullable}
     * @memberof GetEmbeddingDocumentsBody
     */
    'media_type'?: FileContentTypesNullable | null;
    /**
     * 
     * @type {EmbeddingGeneratorsNullable}
     * @memberof GetEmbeddingDocumentsBody
     */
    'embedding_model'?: EmbeddingGeneratorsNullable | null;
    /**
     * Flag to control whether or not to include file-level metadata in the response. This metadata         will be included in the `content_metadata` field of each document along with chunk/embedding level metadata.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'include_file_level_metadata'?: boolean | null;
    /**
     * Flag to control whether or not to perform a high accuracy embedding search. By default, this is set to false.         If true, the search may return more accurate results, but may take longer to complete.
     * @type {boolean}
     * @memberof GetEmbeddingDocumentsBody
     */
    'high_accuracy'?: boolean | null;
    /**
     * 
     * @type {RerankParamsNullable}
     * @memberof GetEmbeddingDocumentsBody
     */
    'rerank'?: RerankParamsNullable | null;
}

