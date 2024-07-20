/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { DataSourceType } from './data-source-type';
import { EmbeddingGeneratorsNullable } from './embedding-generators-nullable';
import { FileSyncConfigNullable } from './file-sync-config-nullable';

/**
 * 
 * @export
 * @interface OAuthURLRequest
 */
export interface OAuthURLRequest {
    /**
     * 
     * @type {any}
     * @memberof OAuthURLRequest
     */
    'tags'?: any | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'scope'?: string | null;
    /**
     * 
     * @type {DataSourceType}
     * @memberof OAuthURLRequest
     */
    'service': DataSourceType;
    /**
     * 
     * @type {number}
     * @memberof OAuthURLRequest
     */
    'chunk_size'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof OAuthURLRequest
     */
    'chunk_overlap'?: number | null;
    /**
     * 
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'skip_embedding_generation'?: boolean | null;
    /**
     * 
     * @type {EmbeddingGeneratorsNullable}
     * @memberof OAuthURLRequest
     */
    'embedding_model'?: EmbeddingGeneratorsNullable | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'zendesk_subdomain'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'microsoft_tenant'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'sharepoint_site_name'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'confluence_subdomain'?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'generate_sparse_vectors'?: boolean | null;
    /**
     * 
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'prepend_filename_to_chunks'?: boolean | null;
    /**
     * Number of objects per chunk. For csv, tsv, xlsx, and json files only.
     * @type {number}
     * @memberof OAuthURLRequest
     */
    'max_items_per_chunk'?: number | null;
    /**
     * 
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'salesforce_domain'?: string | null;
    /**
     * Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'sync_files_on_connection'?: boolean | null;
    /**
     * 
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'set_page_as_boundary'?: boolean;
    /**
     * Used to specify a data source to sync from if you have multiple connected. It can be skipped if          you only have one data source of that type connected or are connecting a new account.
     * @type {number}
     * @memberof OAuthURLRequest
     */
    'data_source_id'?: number | null;
    /**
     * Used to connect a new data source. If not specified, we will attempt to create a sync URL         for an existing data source based on type and ID.
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'connecting_new_account'?: boolean | null;
    /**
     * This request id will be added to all files that get synced using the generated OAuth URL
     * @type {string}
     * @memberof OAuthURLRequest
     */
    'request_id'?: string;
    /**
     * Enable OCR for files that support it. Supported formats: pdf
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'use_ocr'?: boolean | null;
    /**
     * 
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'parse_pdf_tables_with_ocr'?: boolean | null;
    /**
     * Enable integration\'s file picker for sources that support it. Supported sources: BOX, ONEDRIVE, DROPBOX, SHAREPOINT, GOOGLE_DRIVE
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'enable_file_picker'?: boolean;
    /**
     * Enabling this flag will fetch all available content from the source to be listed via list items endpoint
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'sync_source_items'?: boolean;
    /**
     * Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK. It will be ignored for other data sources.
     * @type {boolean}
     * @memberof OAuthURLRequest
     */
    'incremental_sync'?: boolean;
    /**
     * 
     * @type {FileSyncConfigNullable}
     * @memberof OAuthURLRequest
     */
    'file_sync_config'?: FileSyncConfigNullable | null;
}

