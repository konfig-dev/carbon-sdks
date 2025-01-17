# OAuthURLRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tags** | Pointer to **interface{}** |  | [optional] 
**Scope** | Pointer to **NullableString** |  | [optional] 
**Scopes** | Pointer to **[]string** | List of scopes to request from the OAuth provider. Please that the scopes will be used as it is, not          combined with the default props that Carbon uses. One scope should be one array element. | [optional] [default to []]
**Service** | [**OauthBasedConnectors**](OauthBasedConnectors.md) |  | 
**ChunkSize** | Pointer to **NullableInt32** |  | [optional] [default to 1500]
**ChunkOverlap** | Pointer to **NullableInt32** |  | [optional] [default to 20]
**SkipEmbeddingGeneration** | Pointer to **NullableBool** |  | [optional] [default to false]
**EmbeddingModel** | Pointer to [**NullableEmbeddingGeneratorsNullable**](EmbeddingGeneratorsNullable.md) |  | [optional] [default to EMBEDDINGGENERATORSNULLABLE_OPENAI]
**ZendeskSubdomain** | Pointer to **NullableString** |  | [optional] 
**MicrosoftTenant** | Pointer to **NullableString** |  | [optional] 
**SharepointSiteName** | Pointer to **NullableString** |  | [optional] 
**ConfluenceSubdomain** | Pointer to **NullableString** |  | [optional] 
**GenerateSparseVectors** | Pointer to **NullableBool** |  | [optional] [default to false]
**PrependFilenameToChunks** | Pointer to **NullableBool** |  | [optional] [default to false]
**MaxItemsPerChunk** | Pointer to **NullableInt32** | Number of objects per chunk. For csv, tsv, xlsx, and json files only. | [optional] 
**SalesforceDomain** | Pointer to **NullableString** |  | [optional] 
**SyncFilesOnConnection** | Pointer to **NullableBool** | Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk | [optional] [default to true]
**SetPageAsBoundary** | Pointer to **bool** |  | [optional] [default to false]
**DataSourceId** | Pointer to **NullableInt32** | Used to specify a data source to sync from if you have multiple connected. It can be skipped if          you only have one data source of that type connected or are connecting a new account. | [optional] 
**ConnectingNewAccount** | Pointer to **NullableBool** | Used to connect a new data source. If not specified, we will attempt to create a sync URL         for an existing data source based on type and ID. | [optional] [default to false]
**RequestId** | Pointer to **NullableString** | This request id will be added to all files that get synced using the generated OAuth URL | [optional] 
**UseOcr** | Pointer to **NullableBool** | Enable OCR for files that support it. Supported formats: pdf, png, jpg | [optional] [default to false]
**ParsePdfTablesWithOcr** | Pointer to **NullableBool** |  | [optional] [default to false]
**EnableFilePicker** | Pointer to **bool** | Enable integration&#39;s file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT | [optional] [default to true]
**SyncSourceItems** | Pointer to **bool** | Enabling this flag will fetch all available content from the source to be listed via list items endpoint | [optional] [default to true]
**IncrementalSync** | Pointer to **bool** | Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources. | [optional] [default to false]
**FileSyncConfig** | Pointer to [**NullableFileSyncConfigNullable**](FileSyncConfigNullable.md) |  | [optional] 
**AutomaticallyOpenFilePicker** | Pointer to **NullableBool** | Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources. | [optional] 
**GongAccountEmail** | Pointer to **NullableString** | If you are connecting a Gong account, you need to input the email of the account you         wish to connect. This email will be used to identify your carbon data source. | [optional] 
**ServicenowCredentials** | Pointer to [**NullableServiceNowCredentialsNullable**](ServiceNowCredentialsNullable.md) |  | [optional] 
**DataSourceTags** | Pointer to **map[string]interface{}** | Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed. | [optional] [default to {}]

## Methods

### NewOAuthURLRequest

`func NewOAuthURLRequest(service OauthBasedConnectors, ) *OAuthURLRequest`

NewOAuthURLRequest instantiates a new OAuthURLRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthURLRequestWithDefaults

`func NewOAuthURLRequestWithDefaults() *OAuthURLRequest`

NewOAuthURLRequestWithDefaults instantiates a new OAuthURLRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTags

`func (o *OAuthURLRequest) GetTags() interface{}`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *OAuthURLRequest) GetTagsOk() (*interface{}, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *OAuthURLRequest) SetTags(v interface{})`

SetTags sets Tags field to given value.

### HasTags

`func (o *OAuthURLRequest) HasTags() bool`

HasTags returns a boolean if a field has been set.

### SetTagsNil

`func (o *OAuthURLRequest) SetTagsNil(b bool)`

 SetTagsNil sets the value for Tags to be an explicit nil

### UnsetTags
`func (o *OAuthURLRequest) UnsetTags()`

UnsetTags ensures that no value is present for Tags, not even an explicit nil
### GetScope

`func (o *OAuthURLRequest) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *OAuthURLRequest) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *OAuthURLRequest) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *OAuthURLRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.

### SetScopeNil

`func (o *OAuthURLRequest) SetScopeNil(b bool)`

 SetScopeNil sets the value for Scope to be an explicit nil

### UnsetScope
`func (o *OAuthURLRequest) UnsetScope()`

UnsetScope ensures that no value is present for Scope, not even an explicit nil
### GetScopes

`func (o *OAuthURLRequest) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *OAuthURLRequest) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *OAuthURLRequest) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *OAuthURLRequest) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### SetScopesNil

`func (o *OAuthURLRequest) SetScopesNil(b bool)`

 SetScopesNil sets the value for Scopes to be an explicit nil

### UnsetScopes
`func (o *OAuthURLRequest) UnsetScopes()`

UnsetScopes ensures that no value is present for Scopes, not even an explicit nil
### GetService

`func (o *OAuthURLRequest) GetService() OauthBasedConnectors`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *OAuthURLRequest) GetServiceOk() (*OauthBasedConnectors, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *OAuthURLRequest) SetService(v OauthBasedConnectors)`

SetService sets Service field to given value.


### GetChunkSize

`func (o *OAuthURLRequest) GetChunkSize() int32`

GetChunkSize returns the ChunkSize field if non-nil, zero value otherwise.

### GetChunkSizeOk

`func (o *OAuthURLRequest) GetChunkSizeOk() (*int32, bool)`

GetChunkSizeOk returns a tuple with the ChunkSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkSize

`func (o *OAuthURLRequest) SetChunkSize(v int32)`

SetChunkSize sets ChunkSize field to given value.

### HasChunkSize

`func (o *OAuthURLRequest) HasChunkSize() bool`

HasChunkSize returns a boolean if a field has been set.

### SetChunkSizeNil

`func (o *OAuthURLRequest) SetChunkSizeNil(b bool)`

 SetChunkSizeNil sets the value for ChunkSize to be an explicit nil

### UnsetChunkSize
`func (o *OAuthURLRequest) UnsetChunkSize()`

UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
### GetChunkOverlap

`func (o *OAuthURLRequest) GetChunkOverlap() int32`

GetChunkOverlap returns the ChunkOverlap field if non-nil, zero value otherwise.

### GetChunkOverlapOk

`func (o *OAuthURLRequest) GetChunkOverlapOk() (*int32, bool)`

GetChunkOverlapOk returns a tuple with the ChunkOverlap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkOverlap

`func (o *OAuthURLRequest) SetChunkOverlap(v int32)`

SetChunkOverlap sets ChunkOverlap field to given value.

### HasChunkOverlap

`func (o *OAuthURLRequest) HasChunkOverlap() bool`

HasChunkOverlap returns a boolean if a field has been set.

### SetChunkOverlapNil

`func (o *OAuthURLRequest) SetChunkOverlapNil(b bool)`

 SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil

### UnsetChunkOverlap
`func (o *OAuthURLRequest) UnsetChunkOverlap()`

UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
### GetSkipEmbeddingGeneration

`func (o *OAuthURLRequest) GetSkipEmbeddingGeneration() bool`

GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field if non-nil, zero value otherwise.

### GetSkipEmbeddingGenerationOk

`func (o *OAuthURLRequest) GetSkipEmbeddingGenerationOk() (*bool, bool)`

GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipEmbeddingGeneration

`func (o *OAuthURLRequest) SetSkipEmbeddingGeneration(v bool)`

SetSkipEmbeddingGeneration sets SkipEmbeddingGeneration field to given value.

### HasSkipEmbeddingGeneration

`func (o *OAuthURLRequest) HasSkipEmbeddingGeneration() bool`

HasSkipEmbeddingGeneration returns a boolean if a field has been set.

### SetSkipEmbeddingGenerationNil

`func (o *OAuthURLRequest) SetSkipEmbeddingGenerationNil(b bool)`

 SetSkipEmbeddingGenerationNil sets the value for SkipEmbeddingGeneration to be an explicit nil

### UnsetSkipEmbeddingGeneration
`func (o *OAuthURLRequest) UnsetSkipEmbeddingGeneration()`

UnsetSkipEmbeddingGeneration ensures that no value is present for SkipEmbeddingGeneration, not even an explicit nil
### GetEmbeddingModel

`func (o *OAuthURLRequest) GetEmbeddingModel() EmbeddingGeneratorsNullable`

GetEmbeddingModel returns the EmbeddingModel field if non-nil, zero value otherwise.

### GetEmbeddingModelOk

`func (o *OAuthURLRequest) GetEmbeddingModelOk() (*EmbeddingGeneratorsNullable, bool)`

GetEmbeddingModelOk returns a tuple with the EmbeddingModel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbeddingModel

`func (o *OAuthURLRequest) SetEmbeddingModel(v EmbeddingGeneratorsNullable)`

SetEmbeddingModel sets EmbeddingModel field to given value.

### HasEmbeddingModel

`func (o *OAuthURLRequest) HasEmbeddingModel() bool`

HasEmbeddingModel returns a boolean if a field has been set.

### SetEmbeddingModelNil

`func (o *OAuthURLRequest) SetEmbeddingModelNil(b bool)`

 SetEmbeddingModelNil sets the value for EmbeddingModel to be an explicit nil

### UnsetEmbeddingModel
`func (o *OAuthURLRequest) UnsetEmbeddingModel()`

UnsetEmbeddingModel ensures that no value is present for EmbeddingModel, not even an explicit nil
### GetZendeskSubdomain

`func (o *OAuthURLRequest) GetZendeskSubdomain() string`

GetZendeskSubdomain returns the ZendeskSubdomain field if non-nil, zero value otherwise.

### GetZendeskSubdomainOk

`func (o *OAuthURLRequest) GetZendeskSubdomainOk() (*string, bool)`

GetZendeskSubdomainOk returns a tuple with the ZendeskSubdomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZendeskSubdomain

`func (o *OAuthURLRequest) SetZendeskSubdomain(v string)`

SetZendeskSubdomain sets ZendeskSubdomain field to given value.

### HasZendeskSubdomain

`func (o *OAuthURLRequest) HasZendeskSubdomain() bool`

HasZendeskSubdomain returns a boolean if a field has been set.

### SetZendeskSubdomainNil

`func (o *OAuthURLRequest) SetZendeskSubdomainNil(b bool)`

 SetZendeskSubdomainNil sets the value for ZendeskSubdomain to be an explicit nil

### UnsetZendeskSubdomain
`func (o *OAuthURLRequest) UnsetZendeskSubdomain()`

UnsetZendeskSubdomain ensures that no value is present for ZendeskSubdomain, not even an explicit nil
### GetMicrosoftTenant

`func (o *OAuthURLRequest) GetMicrosoftTenant() string`

GetMicrosoftTenant returns the MicrosoftTenant field if non-nil, zero value otherwise.

### GetMicrosoftTenantOk

`func (o *OAuthURLRequest) GetMicrosoftTenantOk() (*string, bool)`

GetMicrosoftTenantOk returns a tuple with the MicrosoftTenant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicrosoftTenant

`func (o *OAuthURLRequest) SetMicrosoftTenant(v string)`

SetMicrosoftTenant sets MicrosoftTenant field to given value.

### HasMicrosoftTenant

`func (o *OAuthURLRequest) HasMicrosoftTenant() bool`

HasMicrosoftTenant returns a boolean if a field has been set.

### SetMicrosoftTenantNil

`func (o *OAuthURLRequest) SetMicrosoftTenantNil(b bool)`

 SetMicrosoftTenantNil sets the value for MicrosoftTenant to be an explicit nil

### UnsetMicrosoftTenant
`func (o *OAuthURLRequest) UnsetMicrosoftTenant()`

UnsetMicrosoftTenant ensures that no value is present for MicrosoftTenant, not even an explicit nil
### GetSharepointSiteName

`func (o *OAuthURLRequest) GetSharepointSiteName() string`

GetSharepointSiteName returns the SharepointSiteName field if non-nil, zero value otherwise.

### GetSharepointSiteNameOk

`func (o *OAuthURLRequest) GetSharepointSiteNameOk() (*string, bool)`

GetSharepointSiteNameOk returns a tuple with the SharepointSiteName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSharepointSiteName

`func (o *OAuthURLRequest) SetSharepointSiteName(v string)`

SetSharepointSiteName sets SharepointSiteName field to given value.

### HasSharepointSiteName

`func (o *OAuthURLRequest) HasSharepointSiteName() bool`

HasSharepointSiteName returns a boolean if a field has been set.

### SetSharepointSiteNameNil

`func (o *OAuthURLRequest) SetSharepointSiteNameNil(b bool)`

 SetSharepointSiteNameNil sets the value for SharepointSiteName to be an explicit nil

### UnsetSharepointSiteName
`func (o *OAuthURLRequest) UnsetSharepointSiteName()`

UnsetSharepointSiteName ensures that no value is present for SharepointSiteName, not even an explicit nil
### GetConfluenceSubdomain

`func (o *OAuthURLRequest) GetConfluenceSubdomain() string`

GetConfluenceSubdomain returns the ConfluenceSubdomain field if non-nil, zero value otherwise.

### GetConfluenceSubdomainOk

`func (o *OAuthURLRequest) GetConfluenceSubdomainOk() (*string, bool)`

GetConfluenceSubdomainOk returns a tuple with the ConfluenceSubdomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfluenceSubdomain

`func (o *OAuthURLRequest) SetConfluenceSubdomain(v string)`

SetConfluenceSubdomain sets ConfluenceSubdomain field to given value.

### HasConfluenceSubdomain

`func (o *OAuthURLRequest) HasConfluenceSubdomain() bool`

HasConfluenceSubdomain returns a boolean if a field has been set.

### SetConfluenceSubdomainNil

`func (o *OAuthURLRequest) SetConfluenceSubdomainNil(b bool)`

 SetConfluenceSubdomainNil sets the value for ConfluenceSubdomain to be an explicit nil

### UnsetConfluenceSubdomain
`func (o *OAuthURLRequest) UnsetConfluenceSubdomain()`

UnsetConfluenceSubdomain ensures that no value is present for ConfluenceSubdomain, not even an explicit nil
### GetGenerateSparseVectors

`func (o *OAuthURLRequest) GetGenerateSparseVectors() bool`

GetGenerateSparseVectors returns the GenerateSparseVectors field if non-nil, zero value otherwise.

### GetGenerateSparseVectorsOk

`func (o *OAuthURLRequest) GetGenerateSparseVectorsOk() (*bool, bool)`

GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenerateSparseVectors

`func (o *OAuthURLRequest) SetGenerateSparseVectors(v bool)`

SetGenerateSparseVectors sets GenerateSparseVectors field to given value.

### HasGenerateSparseVectors

`func (o *OAuthURLRequest) HasGenerateSparseVectors() bool`

HasGenerateSparseVectors returns a boolean if a field has been set.

### SetGenerateSparseVectorsNil

`func (o *OAuthURLRequest) SetGenerateSparseVectorsNil(b bool)`

 SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil

### UnsetGenerateSparseVectors
`func (o *OAuthURLRequest) UnsetGenerateSparseVectors()`

UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
### GetPrependFilenameToChunks

`func (o *OAuthURLRequest) GetPrependFilenameToChunks() bool`

GetPrependFilenameToChunks returns the PrependFilenameToChunks field if non-nil, zero value otherwise.

### GetPrependFilenameToChunksOk

`func (o *OAuthURLRequest) GetPrependFilenameToChunksOk() (*bool, bool)`

GetPrependFilenameToChunksOk returns a tuple with the PrependFilenameToChunks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrependFilenameToChunks

`func (o *OAuthURLRequest) SetPrependFilenameToChunks(v bool)`

SetPrependFilenameToChunks sets PrependFilenameToChunks field to given value.

### HasPrependFilenameToChunks

`func (o *OAuthURLRequest) HasPrependFilenameToChunks() bool`

HasPrependFilenameToChunks returns a boolean if a field has been set.

### SetPrependFilenameToChunksNil

`func (o *OAuthURLRequest) SetPrependFilenameToChunksNil(b bool)`

 SetPrependFilenameToChunksNil sets the value for PrependFilenameToChunks to be an explicit nil

### UnsetPrependFilenameToChunks
`func (o *OAuthURLRequest) UnsetPrependFilenameToChunks()`

UnsetPrependFilenameToChunks ensures that no value is present for PrependFilenameToChunks, not even an explicit nil
### GetMaxItemsPerChunk

`func (o *OAuthURLRequest) GetMaxItemsPerChunk() int32`

GetMaxItemsPerChunk returns the MaxItemsPerChunk field if non-nil, zero value otherwise.

### GetMaxItemsPerChunkOk

`func (o *OAuthURLRequest) GetMaxItemsPerChunkOk() (*int32, bool)`

GetMaxItemsPerChunkOk returns a tuple with the MaxItemsPerChunk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxItemsPerChunk

`func (o *OAuthURLRequest) SetMaxItemsPerChunk(v int32)`

SetMaxItemsPerChunk sets MaxItemsPerChunk field to given value.

### HasMaxItemsPerChunk

`func (o *OAuthURLRequest) HasMaxItemsPerChunk() bool`

HasMaxItemsPerChunk returns a boolean if a field has been set.

### SetMaxItemsPerChunkNil

`func (o *OAuthURLRequest) SetMaxItemsPerChunkNil(b bool)`

 SetMaxItemsPerChunkNil sets the value for MaxItemsPerChunk to be an explicit nil

### UnsetMaxItemsPerChunk
`func (o *OAuthURLRequest) UnsetMaxItemsPerChunk()`

UnsetMaxItemsPerChunk ensures that no value is present for MaxItemsPerChunk, not even an explicit nil
### GetSalesforceDomain

`func (o *OAuthURLRequest) GetSalesforceDomain() string`

GetSalesforceDomain returns the SalesforceDomain field if non-nil, zero value otherwise.

### GetSalesforceDomainOk

`func (o *OAuthURLRequest) GetSalesforceDomainOk() (*string, bool)`

GetSalesforceDomainOk returns a tuple with the SalesforceDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSalesforceDomain

`func (o *OAuthURLRequest) SetSalesforceDomain(v string)`

SetSalesforceDomain sets SalesforceDomain field to given value.

### HasSalesforceDomain

`func (o *OAuthURLRequest) HasSalesforceDomain() bool`

HasSalesforceDomain returns a boolean if a field has been set.

### SetSalesforceDomainNil

`func (o *OAuthURLRequest) SetSalesforceDomainNil(b bool)`

 SetSalesforceDomainNil sets the value for SalesforceDomain to be an explicit nil

### UnsetSalesforceDomain
`func (o *OAuthURLRequest) UnsetSalesforceDomain()`

UnsetSalesforceDomain ensures that no value is present for SalesforceDomain, not even an explicit nil
### GetSyncFilesOnConnection

`func (o *OAuthURLRequest) GetSyncFilesOnConnection() bool`

GetSyncFilesOnConnection returns the SyncFilesOnConnection field if non-nil, zero value otherwise.

### GetSyncFilesOnConnectionOk

`func (o *OAuthURLRequest) GetSyncFilesOnConnectionOk() (*bool, bool)`

GetSyncFilesOnConnectionOk returns a tuple with the SyncFilesOnConnection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncFilesOnConnection

`func (o *OAuthURLRequest) SetSyncFilesOnConnection(v bool)`

SetSyncFilesOnConnection sets SyncFilesOnConnection field to given value.

### HasSyncFilesOnConnection

`func (o *OAuthURLRequest) HasSyncFilesOnConnection() bool`

HasSyncFilesOnConnection returns a boolean if a field has been set.

### SetSyncFilesOnConnectionNil

`func (o *OAuthURLRequest) SetSyncFilesOnConnectionNil(b bool)`

 SetSyncFilesOnConnectionNil sets the value for SyncFilesOnConnection to be an explicit nil

### UnsetSyncFilesOnConnection
`func (o *OAuthURLRequest) UnsetSyncFilesOnConnection()`

UnsetSyncFilesOnConnection ensures that no value is present for SyncFilesOnConnection, not even an explicit nil
### GetSetPageAsBoundary

`func (o *OAuthURLRequest) GetSetPageAsBoundary() bool`

GetSetPageAsBoundary returns the SetPageAsBoundary field if non-nil, zero value otherwise.

### GetSetPageAsBoundaryOk

`func (o *OAuthURLRequest) GetSetPageAsBoundaryOk() (*bool, bool)`

GetSetPageAsBoundaryOk returns a tuple with the SetPageAsBoundary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSetPageAsBoundary

`func (o *OAuthURLRequest) SetSetPageAsBoundary(v bool)`

SetSetPageAsBoundary sets SetPageAsBoundary field to given value.

### HasSetPageAsBoundary

`func (o *OAuthURLRequest) HasSetPageAsBoundary() bool`

HasSetPageAsBoundary returns a boolean if a field has been set.

### GetDataSourceId

`func (o *OAuthURLRequest) GetDataSourceId() int32`

GetDataSourceId returns the DataSourceId field if non-nil, zero value otherwise.

### GetDataSourceIdOk

`func (o *OAuthURLRequest) GetDataSourceIdOk() (*int32, bool)`

GetDataSourceIdOk returns a tuple with the DataSourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataSourceId

`func (o *OAuthURLRequest) SetDataSourceId(v int32)`

SetDataSourceId sets DataSourceId field to given value.

### HasDataSourceId

`func (o *OAuthURLRequest) HasDataSourceId() bool`

HasDataSourceId returns a boolean if a field has been set.

### SetDataSourceIdNil

`func (o *OAuthURLRequest) SetDataSourceIdNil(b bool)`

 SetDataSourceIdNil sets the value for DataSourceId to be an explicit nil

### UnsetDataSourceId
`func (o *OAuthURLRequest) UnsetDataSourceId()`

UnsetDataSourceId ensures that no value is present for DataSourceId, not even an explicit nil
### GetConnectingNewAccount

`func (o *OAuthURLRequest) GetConnectingNewAccount() bool`

GetConnectingNewAccount returns the ConnectingNewAccount field if non-nil, zero value otherwise.

### GetConnectingNewAccountOk

`func (o *OAuthURLRequest) GetConnectingNewAccountOk() (*bool, bool)`

GetConnectingNewAccountOk returns a tuple with the ConnectingNewAccount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectingNewAccount

`func (o *OAuthURLRequest) SetConnectingNewAccount(v bool)`

SetConnectingNewAccount sets ConnectingNewAccount field to given value.

### HasConnectingNewAccount

`func (o *OAuthURLRequest) HasConnectingNewAccount() bool`

HasConnectingNewAccount returns a boolean if a field has been set.

### SetConnectingNewAccountNil

`func (o *OAuthURLRequest) SetConnectingNewAccountNil(b bool)`

 SetConnectingNewAccountNil sets the value for ConnectingNewAccount to be an explicit nil

### UnsetConnectingNewAccount
`func (o *OAuthURLRequest) UnsetConnectingNewAccount()`

UnsetConnectingNewAccount ensures that no value is present for ConnectingNewAccount, not even an explicit nil
### GetRequestId

`func (o *OAuthURLRequest) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *OAuthURLRequest) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *OAuthURLRequest) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *OAuthURLRequest) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### SetRequestIdNil

`func (o *OAuthURLRequest) SetRequestIdNil(b bool)`

 SetRequestIdNil sets the value for RequestId to be an explicit nil

### UnsetRequestId
`func (o *OAuthURLRequest) UnsetRequestId()`

UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
### GetUseOcr

`func (o *OAuthURLRequest) GetUseOcr() bool`

GetUseOcr returns the UseOcr field if non-nil, zero value otherwise.

### GetUseOcrOk

`func (o *OAuthURLRequest) GetUseOcrOk() (*bool, bool)`

GetUseOcrOk returns a tuple with the UseOcr field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUseOcr

`func (o *OAuthURLRequest) SetUseOcr(v bool)`

SetUseOcr sets UseOcr field to given value.

### HasUseOcr

`func (o *OAuthURLRequest) HasUseOcr() bool`

HasUseOcr returns a boolean if a field has been set.

### SetUseOcrNil

`func (o *OAuthURLRequest) SetUseOcrNil(b bool)`

 SetUseOcrNil sets the value for UseOcr to be an explicit nil

### UnsetUseOcr
`func (o *OAuthURLRequest) UnsetUseOcr()`

UnsetUseOcr ensures that no value is present for UseOcr, not even an explicit nil
### GetParsePdfTablesWithOcr

`func (o *OAuthURLRequest) GetParsePdfTablesWithOcr() bool`

GetParsePdfTablesWithOcr returns the ParsePdfTablesWithOcr field if non-nil, zero value otherwise.

### GetParsePdfTablesWithOcrOk

`func (o *OAuthURLRequest) GetParsePdfTablesWithOcrOk() (*bool, bool)`

GetParsePdfTablesWithOcrOk returns a tuple with the ParsePdfTablesWithOcr field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParsePdfTablesWithOcr

`func (o *OAuthURLRequest) SetParsePdfTablesWithOcr(v bool)`

SetParsePdfTablesWithOcr sets ParsePdfTablesWithOcr field to given value.

### HasParsePdfTablesWithOcr

`func (o *OAuthURLRequest) HasParsePdfTablesWithOcr() bool`

HasParsePdfTablesWithOcr returns a boolean if a field has been set.

### SetParsePdfTablesWithOcrNil

`func (o *OAuthURLRequest) SetParsePdfTablesWithOcrNil(b bool)`

 SetParsePdfTablesWithOcrNil sets the value for ParsePdfTablesWithOcr to be an explicit nil

### UnsetParsePdfTablesWithOcr
`func (o *OAuthURLRequest) UnsetParsePdfTablesWithOcr()`

UnsetParsePdfTablesWithOcr ensures that no value is present for ParsePdfTablesWithOcr, not even an explicit nil
### GetEnableFilePicker

`func (o *OAuthURLRequest) GetEnableFilePicker() bool`

GetEnableFilePicker returns the EnableFilePicker field if non-nil, zero value otherwise.

### GetEnableFilePickerOk

`func (o *OAuthURLRequest) GetEnableFilePickerOk() (*bool, bool)`

GetEnableFilePickerOk returns a tuple with the EnableFilePicker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnableFilePicker

`func (o *OAuthURLRequest) SetEnableFilePicker(v bool)`

SetEnableFilePicker sets EnableFilePicker field to given value.

### HasEnableFilePicker

`func (o *OAuthURLRequest) HasEnableFilePicker() bool`

HasEnableFilePicker returns a boolean if a field has been set.

### GetSyncSourceItems

`func (o *OAuthURLRequest) GetSyncSourceItems() bool`

GetSyncSourceItems returns the SyncSourceItems field if non-nil, zero value otherwise.

### GetSyncSourceItemsOk

`func (o *OAuthURLRequest) GetSyncSourceItemsOk() (*bool, bool)`

GetSyncSourceItemsOk returns a tuple with the SyncSourceItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncSourceItems

`func (o *OAuthURLRequest) SetSyncSourceItems(v bool)`

SetSyncSourceItems sets SyncSourceItems field to given value.

### HasSyncSourceItems

`func (o *OAuthURLRequest) HasSyncSourceItems() bool`

HasSyncSourceItems returns a boolean if a field has been set.

### GetIncrementalSync

`func (o *OAuthURLRequest) GetIncrementalSync() bool`

GetIncrementalSync returns the IncrementalSync field if non-nil, zero value otherwise.

### GetIncrementalSyncOk

`func (o *OAuthURLRequest) GetIncrementalSyncOk() (*bool, bool)`

GetIncrementalSyncOk returns a tuple with the IncrementalSync field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncrementalSync

`func (o *OAuthURLRequest) SetIncrementalSync(v bool)`

SetIncrementalSync sets IncrementalSync field to given value.

### HasIncrementalSync

`func (o *OAuthURLRequest) HasIncrementalSync() bool`

HasIncrementalSync returns a boolean if a field has been set.

### GetFileSyncConfig

`func (o *OAuthURLRequest) GetFileSyncConfig() FileSyncConfigNullable`

GetFileSyncConfig returns the FileSyncConfig field if non-nil, zero value otherwise.

### GetFileSyncConfigOk

`func (o *OAuthURLRequest) GetFileSyncConfigOk() (*FileSyncConfigNullable, bool)`

GetFileSyncConfigOk returns a tuple with the FileSyncConfig field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileSyncConfig

`func (o *OAuthURLRequest) SetFileSyncConfig(v FileSyncConfigNullable)`

SetFileSyncConfig sets FileSyncConfig field to given value.

### HasFileSyncConfig

`func (o *OAuthURLRequest) HasFileSyncConfig() bool`

HasFileSyncConfig returns a boolean if a field has been set.

### SetFileSyncConfigNil

`func (o *OAuthURLRequest) SetFileSyncConfigNil(b bool)`

 SetFileSyncConfigNil sets the value for FileSyncConfig to be an explicit nil

### UnsetFileSyncConfig
`func (o *OAuthURLRequest) UnsetFileSyncConfig()`

UnsetFileSyncConfig ensures that no value is present for FileSyncConfig, not even an explicit nil
### GetAutomaticallyOpenFilePicker

`func (o *OAuthURLRequest) GetAutomaticallyOpenFilePicker() bool`

GetAutomaticallyOpenFilePicker returns the AutomaticallyOpenFilePicker field if non-nil, zero value otherwise.

### GetAutomaticallyOpenFilePickerOk

`func (o *OAuthURLRequest) GetAutomaticallyOpenFilePickerOk() (*bool, bool)`

GetAutomaticallyOpenFilePickerOk returns a tuple with the AutomaticallyOpenFilePicker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAutomaticallyOpenFilePicker

`func (o *OAuthURLRequest) SetAutomaticallyOpenFilePicker(v bool)`

SetAutomaticallyOpenFilePicker sets AutomaticallyOpenFilePicker field to given value.

### HasAutomaticallyOpenFilePicker

`func (o *OAuthURLRequest) HasAutomaticallyOpenFilePicker() bool`

HasAutomaticallyOpenFilePicker returns a boolean if a field has been set.

### SetAutomaticallyOpenFilePickerNil

`func (o *OAuthURLRequest) SetAutomaticallyOpenFilePickerNil(b bool)`

 SetAutomaticallyOpenFilePickerNil sets the value for AutomaticallyOpenFilePicker to be an explicit nil

### UnsetAutomaticallyOpenFilePicker
`func (o *OAuthURLRequest) UnsetAutomaticallyOpenFilePicker()`

UnsetAutomaticallyOpenFilePicker ensures that no value is present for AutomaticallyOpenFilePicker, not even an explicit nil
### GetGongAccountEmail

`func (o *OAuthURLRequest) GetGongAccountEmail() string`

GetGongAccountEmail returns the GongAccountEmail field if non-nil, zero value otherwise.

### GetGongAccountEmailOk

`func (o *OAuthURLRequest) GetGongAccountEmailOk() (*string, bool)`

GetGongAccountEmailOk returns a tuple with the GongAccountEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGongAccountEmail

`func (o *OAuthURLRequest) SetGongAccountEmail(v string)`

SetGongAccountEmail sets GongAccountEmail field to given value.

### HasGongAccountEmail

`func (o *OAuthURLRequest) HasGongAccountEmail() bool`

HasGongAccountEmail returns a boolean if a field has been set.

### SetGongAccountEmailNil

`func (o *OAuthURLRequest) SetGongAccountEmailNil(b bool)`

 SetGongAccountEmailNil sets the value for GongAccountEmail to be an explicit nil

### UnsetGongAccountEmail
`func (o *OAuthURLRequest) UnsetGongAccountEmail()`

UnsetGongAccountEmail ensures that no value is present for GongAccountEmail, not even an explicit nil
### GetServicenowCredentials

`func (o *OAuthURLRequest) GetServicenowCredentials() ServiceNowCredentialsNullable`

GetServicenowCredentials returns the ServicenowCredentials field if non-nil, zero value otherwise.

### GetServicenowCredentialsOk

`func (o *OAuthURLRequest) GetServicenowCredentialsOk() (*ServiceNowCredentialsNullable, bool)`

GetServicenowCredentialsOk returns a tuple with the ServicenowCredentials field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServicenowCredentials

`func (o *OAuthURLRequest) SetServicenowCredentials(v ServiceNowCredentialsNullable)`

SetServicenowCredentials sets ServicenowCredentials field to given value.

### HasServicenowCredentials

`func (o *OAuthURLRequest) HasServicenowCredentials() bool`

HasServicenowCredentials returns a boolean if a field has been set.

### SetServicenowCredentialsNil

`func (o *OAuthURLRequest) SetServicenowCredentialsNil(b bool)`

 SetServicenowCredentialsNil sets the value for ServicenowCredentials to be an explicit nil

### UnsetServicenowCredentials
`func (o *OAuthURLRequest) UnsetServicenowCredentials()`

UnsetServicenowCredentials ensures that no value is present for ServicenowCredentials, not even an explicit nil
### GetDataSourceTags

`func (o *OAuthURLRequest) GetDataSourceTags() map[string]interface{}`

GetDataSourceTags returns the DataSourceTags field if non-nil, zero value otherwise.

### GetDataSourceTagsOk

`func (o *OAuthURLRequest) GetDataSourceTagsOk() (*map[string]interface{}, bool)`

GetDataSourceTagsOk returns a tuple with the DataSourceTags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataSourceTags

`func (o *OAuthURLRequest) SetDataSourceTags(v map[string]interface{})`

SetDataSourceTags sets DataSourceTags field to given value.

### HasDataSourceTags

`func (o *OAuthURLRequest) HasDataSourceTags() bool`

HasDataSourceTags returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


