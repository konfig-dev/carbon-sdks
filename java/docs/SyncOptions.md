

# SyncOptions


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**tags** | **Object** |  |  [optional] |
|**chunkSize** | **Integer** |  |  [optional] |
|**chunkOverlap** | **Integer** |  |  [optional] |
|**skipEmbeddingGeneration** | **Boolean** |  |  [optional] |
|**embeddingModel** | **EmbeddingGeneratorsNullable** |  |  [optional] |
|**generateSparseVectors** | **Boolean** |  |  [optional] |
|**prependFilenameToChunks** | **Boolean** |  |  [optional] |
|**maxItemsPerChunk** | **Integer** | Number of objects per chunk. For csv, tsv, xlsx, and json files only. |  [optional] |
|**syncFilesOnConnection** | **Boolean** | Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk |  [optional] |
|**setPageAsBoundary** | **Boolean** |  |  [optional] |
|**requestId** | **String** |  |  [optional] |
|**enableFilePicker** | **Boolean** |  |  [optional] |
|**syncSourceItems** | **Boolean** | Enabling this flag will fetch all available content from the source to be listed via list items endpoint |  [optional] |
|**incrementalSync** | **Boolean** | Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources. |  [optional] |
|**fileSyncConfig** | [**FileSyncConfigNullable**](FileSyncConfigNullable.md) |  |  [optional] |
|**automaticallyOpenFilePicker** | **Boolean** | Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources. |  [optional] |
|**dataSourceTags** | **Object** | Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed. |  [optional] |



