/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { HelpdeskFileTypes } from './helpdesk-file-types';
import { TranscriptionServiceNullable } from './transcription-service-nullable';

/**
 * Used to configure file syncing for certain connectors when sync_files_on_connection is set to true
 * @export
 * @interface FileSyncConfigNullable
 */
export interface FileSyncConfigNullable {
    /**
     * File types to automatically sync when the data source connects. Only a subset of file types can be          controlled. If not supported, then they will always be synced
     * @type {Array<HelpdeskFileTypes>}
     * @memberof FileSyncConfigNullable
     */
    'auto_synced_source_types'?: Array<HelpdeskFileTypes>;
    /**
     * Automatically sync attachments from files where supported. Currently applies to Helpdesk Tickets
     * @type {boolean}
     * @memberof FileSyncConfigNullable
     */
    'sync_attachments'?: boolean;
    /**
     * Detect audio language before transcription for audio files
     * @type {boolean}
     * @memberof FileSyncConfigNullable
     */
    'detect_audio_language'?: boolean;
    /**
     * 
     * @type {TranscriptionServiceNullable}
     * @memberof FileSyncConfigNullable
     */
    'transcription_service'?: TranscriptionServiceNullable | null;
    /**
     * Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files.
     * @type {boolean}
     * @memberof FileSyncConfigNullable
     */
    'split_rows'?: boolean;
}

