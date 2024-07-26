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
 * @interface DataSourceConfiguration
 */
export interface DataSourceConfiguration {
    /**
     * List of allowed file formats for the organization. An empty list means all file formats are allowed.
     * @type {Array<string>}
     * @memberof DataSourceConfiguration
     */
    'allowed_file_formats'?: Array<string>;
    /**
     * Used to set the format Google Workspace documents (Docs, Sheets, Slides) are stored as for raw files uploads in S3. The default format is TXT
     * @type {string}
     * @memberof DataSourceConfiguration
     */
    'google_workspace_docs_save_as'?: string | null;
}
