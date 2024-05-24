/*
Carbon

Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0


NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { HelpdeskFileTypes } from './helpdesk-file-types';

/**
 * 
 * @export
 * @interface FileSyncConfig
 */
export interface FileSyncConfig {
    /**
     * File types to automatically sync when the data source connects. Only a subset of file types can be          controlled. If not supported, then they will always be synced
     * @type {Array<HelpdeskFileTypes>}
     * @memberof FileSyncConfig
     */
    'auto_synced_source_types'?: Array<HelpdeskFileTypes>;
    /**
     * Automatically sync attachments from files where supported. Currently applies to Helpdesk Tickets
     * @type {boolean}
     * @memberof FileSyncConfig
     */
    'sync_attachments'?: boolean;
    /**
     * Detect audio language before transcription for audio files
     * @type {boolean}
     * @memberof FileSyncConfig
     */
    'detect_audio_language'?: boolean;
}

