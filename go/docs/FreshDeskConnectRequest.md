# FreshDeskConnectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tags** | Pointer to **map[string]interface{}** |  | [optional] [default to {}]
**Domain** | **string** |  | 
**ApiKey** | **string** |  | 
**ChunkSize** | Pointer to **NullableInt32** |  | [optional] [default to 1500]
**ChunkOverlap** | Pointer to **NullableInt32** |  | [optional] [default to 20]
**SkipEmbeddingGeneration** | Pointer to **NullableBool** |  | [optional] [default to false]
**EmbeddingModel** | Pointer to [**NullableEmbeddingGeneratorsNullable**](EmbeddingGeneratorsNullable.md) |  | [optional] [default to EMBEDDINGGENERATORSNULLABLE_OPENAI]
**GenerateSparseVectors** | Pointer to **NullableBool** |  | [optional] [default to false]
**PrependFilenameToChunks** | Pointer to **NullableBool** |  | [optional] [default to false]
**SyncFilesOnConnection** | Pointer to **NullableBool** |  | [optional] [default to true]
**RequestId** | Pointer to **NullableString** |  | [optional] 
**SyncSourceItems** | Pointer to **bool** | Enabling this flag will fetch all available content from the source to be listed via list items endpoint | [optional] [default to true]
**FileSyncConfig** | Pointer to [**NullableFileSyncConfigNullable**](FileSyncConfigNullable.md) |  | [optional] 
**DataSourceTags** | Pointer to **map[string]interface{}** | Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed. | [optional] [default to {}]

## Methods

### NewFreshDeskConnectRequest

`func NewFreshDeskConnectRequest(domain string, apiKey string, ) *FreshDeskConnectRequest`

NewFreshDeskConnectRequest instantiates a new FreshDeskConnectRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFreshDeskConnectRequestWithDefaults

`func NewFreshDeskConnectRequestWithDefaults() *FreshDeskConnectRequest`

NewFreshDeskConnectRequestWithDefaults instantiates a new FreshDeskConnectRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTags

`func (o *FreshDeskConnectRequest) GetTags() map[string]interface{}`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *FreshDeskConnectRequest) GetTagsOk() (*map[string]interface{}, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *FreshDeskConnectRequest) SetTags(v map[string]interface{})`

SetTags sets Tags field to given value.

### HasTags

`func (o *FreshDeskConnectRequest) HasTags() bool`

HasTags returns a boolean if a field has been set.

### SetTagsNil

`func (o *FreshDeskConnectRequest) SetTagsNil(b bool)`

 SetTagsNil sets the value for Tags to be an explicit nil

### UnsetTags
`func (o *FreshDeskConnectRequest) UnsetTags()`

UnsetTags ensures that no value is present for Tags, not even an explicit nil
### GetDomain

`func (o *FreshDeskConnectRequest) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *FreshDeskConnectRequest) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *FreshDeskConnectRequest) SetDomain(v string)`

SetDomain sets Domain field to given value.


### GetApiKey

`func (o *FreshDeskConnectRequest) GetApiKey() string`

GetApiKey returns the ApiKey field if non-nil, zero value otherwise.

### GetApiKeyOk

`func (o *FreshDeskConnectRequest) GetApiKeyOk() (*string, bool)`

GetApiKeyOk returns a tuple with the ApiKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApiKey

`func (o *FreshDeskConnectRequest) SetApiKey(v string)`

SetApiKey sets ApiKey field to given value.


### GetChunkSize

`func (o *FreshDeskConnectRequest) GetChunkSize() int32`

GetChunkSize returns the ChunkSize field if non-nil, zero value otherwise.

### GetChunkSizeOk

`func (o *FreshDeskConnectRequest) GetChunkSizeOk() (*int32, bool)`

GetChunkSizeOk returns a tuple with the ChunkSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkSize

`func (o *FreshDeskConnectRequest) SetChunkSize(v int32)`

SetChunkSize sets ChunkSize field to given value.

### HasChunkSize

`func (o *FreshDeskConnectRequest) HasChunkSize() bool`

HasChunkSize returns a boolean if a field has been set.

### SetChunkSizeNil

`func (o *FreshDeskConnectRequest) SetChunkSizeNil(b bool)`

 SetChunkSizeNil sets the value for ChunkSize to be an explicit nil

### UnsetChunkSize
`func (o *FreshDeskConnectRequest) UnsetChunkSize()`

UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
### GetChunkOverlap

`func (o *FreshDeskConnectRequest) GetChunkOverlap() int32`

GetChunkOverlap returns the ChunkOverlap field if non-nil, zero value otherwise.

### GetChunkOverlapOk

`func (o *FreshDeskConnectRequest) GetChunkOverlapOk() (*int32, bool)`

GetChunkOverlapOk returns a tuple with the ChunkOverlap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkOverlap

`func (o *FreshDeskConnectRequest) SetChunkOverlap(v int32)`

SetChunkOverlap sets ChunkOverlap field to given value.

### HasChunkOverlap

`func (o *FreshDeskConnectRequest) HasChunkOverlap() bool`

HasChunkOverlap returns a boolean if a field has been set.

### SetChunkOverlapNil

`func (o *FreshDeskConnectRequest) SetChunkOverlapNil(b bool)`

 SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil

### UnsetChunkOverlap
`func (o *FreshDeskConnectRequest) UnsetChunkOverlap()`

UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
### GetSkipEmbeddingGeneration

`func (o *FreshDeskConnectRequest) GetSkipEmbeddingGeneration() bool`

GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field if non-nil, zero value otherwise.

### GetSkipEmbeddingGenerationOk

`func (o *FreshDeskConnectRequest) GetSkipEmbeddingGenerationOk() (*bool, bool)`

GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipEmbeddingGeneration

`func (o *FreshDeskConnectRequest) SetSkipEmbeddingGeneration(v bool)`

SetSkipEmbeddingGeneration sets SkipEmbeddingGeneration field to given value.

### HasSkipEmbeddingGeneration

`func (o *FreshDeskConnectRequest) HasSkipEmbeddingGeneration() bool`

HasSkipEmbeddingGeneration returns a boolean if a field has been set.

### SetSkipEmbeddingGenerationNil

`func (o *FreshDeskConnectRequest) SetSkipEmbeddingGenerationNil(b bool)`

 SetSkipEmbeddingGenerationNil sets the value for SkipEmbeddingGeneration to be an explicit nil

### UnsetSkipEmbeddingGeneration
`func (o *FreshDeskConnectRequest) UnsetSkipEmbeddingGeneration()`

UnsetSkipEmbeddingGeneration ensures that no value is present for SkipEmbeddingGeneration, not even an explicit nil
### GetEmbeddingModel

`func (o *FreshDeskConnectRequest) GetEmbeddingModel() EmbeddingGeneratorsNullable`

GetEmbeddingModel returns the EmbeddingModel field if non-nil, zero value otherwise.

### GetEmbeddingModelOk

`func (o *FreshDeskConnectRequest) GetEmbeddingModelOk() (*EmbeddingGeneratorsNullable, bool)`

GetEmbeddingModelOk returns a tuple with the EmbeddingModel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbeddingModel

`func (o *FreshDeskConnectRequest) SetEmbeddingModel(v EmbeddingGeneratorsNullable)`

SetEmbeddingModel sets EmbeddingModel field to given value.

### HasEmbeddingModel

`func (o *FreshDeskConnectRequest) HasEmbeddingModel() bool`

HasEmbeddingModel returns a boolean if a field has been set.

### SetEmbeddingModelNil

`func (o *FreshDeskConnectRequest) SetEmbeddingModelNil(b bool)`

 SetEmbeddingModelNil sets the value for EmbeddingModel to be an explicit nil

### UnsetEmbeddingModel
`func (o *FreshDeskConnectRequest) UnsetEmbeddingModel()`

UnsetEmbeddingModel ensures that no value is present for EmbeddingModel, not even an explicit nil
### GetGenerateSparseVectors

`func (o *FreshDeskConnectRequest) GetGenerateSparseVectors() bool`

GetGenerateSparseVectors returns the GenerateSparseVectors field if non-nil, zero value otherwise.

### GetGenerateSparseVectorsOk

`func (o *FreshDeskConnectRequest) GetGenerateSparseVectorsOk() (*bool, bool)`

GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenerateSparseVectors

`func (o *FreshDeskConnectRequest) SetGenerateSparseVectors(v bool)`

SetGenerateSparseVectors sets GenerateSparseVectors field to given value.

### HasGenerateSparseVectors

`func (o *FreshDeskConnectRequest) HasGenerateSparseVectors() bool`

HasGenerateSparseVectors returns a boolean if a field has been set.

### SetGenerateSparseVectorsNil

`func (o *FreshDeskConnectRequest) SetGenerateSparseVectorsNil(b bool)`

 SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil

### UnsetGenerateSparseVectors
`func (o *FreshDeskConnectRequest) UnsetGenerateSparseVectors()`

UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
### GetPrependFilenameToChunks

`func (o *FreshDeskConnectRequest) GetPrependFilenameToChunks() bool`

GetPrependFilenameToChunks returns the PrependFilenameToChunks field if non-nil, zero value otherwise.

### GetPrependFilenameToChunksOk

`func (o *FreshDeskConnectRequest) GetPrependFilenameToChunksOk() (*bool, bool)`

GetPrependFilenameToChunksOk returns a tuple with the PrependFilenameToChunks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrependFilenameToChunks

`func (o *FreshDeskConnectRequest) SetPrependFilenameToChunks(v bool)`

SetPrependFilenameToChunks sets PrependFilenameToChunks field to given value.

### HasPrependFilenameToChunks

`func (o *FreshDeskConnectRequest) HasPrependFilenameToChunks() bool`

HasPrependFilenameToChunks returns a boolean if a field has been set.

### SetPrependFilenameToChunksNil

`func (o *FreshDeskConnectRequest) SetPrependFilenameToChunksNil(b bool)`

 SetPrependFilenameToChunksNil sets the value for PrependFilenameToChunks to be an explicit nil

### UnsetPrependFilenameToChunks
`func (o *FreshDeskConnectRequest) UnsetPrependFilenameToChunks()`

UnsetPrependFilenameToChunks ensures that no value is present for PrependFilenameToChunks, not even an explicit nil
### GetSyncFilesOnConnection

`func (o *FreshDeskConnectRequest) GetSyncFilesOnConnection() bool`

GetSyncFilesOnConnection returns the SyncFilesOnConnection field if non-nil, zero value otherwise.

### GetSyncFilesOnConnectionOk

`func (o *FreshDeskConnectRequest) GetSyncFilesOnConnectionOk() (*bool, bool)`

GetSyncFilesOnConnectionOk returns a tuple with the SyncFilesOnConnection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncFilesOnConnection

`func (o *FreshDeskConnectRequest) SetSyncFilesOnConnection(v bool)`

SetSyncFilesOnConnection sets SyncFilesOnConnection field to given value.

### HasSyncFilesOnConnection

`func (o *FreshDeskConnectRequest) HasSyncFilesOnConnection() bool`

HasSyncFilesOnConnection returns a boolean if a field has been set.

### SetSyncFilesOnConnectionNil

`func (o *FreshDeskConnectRequest) SetSyncFilesOnConnectionNil(b bool)`

 SetSyncFilesOnConnectionNil sets the value for SyncFilesOnConnection to be an explicit nil

### UnsetSyncFilesOnConnection
`func (o *FreshDeskConnectRequest) UnsetSyncFilesOnConnection()`

UnsetSyncFilesOnConnection ensures that no value is present for SyncFilesOnConnection, not even an explicit nil
### GetRequestId

`func (o *FreshDeskConnectRequest) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *FreshDeskConnectRequest) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *FreshDeskConnectRequest) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *FreshDeskConnectRequest) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### SetRequestIdNil

`func (o *FreshDeskConnectRequest) SetRequestIdNil(b bool)`

 SetRequestIdNil sets the value for RequestId to be an explicit nil

### UnsetRequestId
`func (o *FreshDeskConnectRequest) UnsetRequestId()`

UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
### GetSyncSourceItems

`func (o *FreshDeskConnectRequest) GetSyncSourceItems() bool`

GetSyncSourceItems returns the SyncSourceItems field if non-nil, zero value otherwise.

### GetSyncSourceItemsOk

`func (o *FreshDeskConnectRequest) GetSyncSourceItemsOk() (*bool, bool)`

GetSyncSourceItemsOk returns a tuple with the SyncSourceItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncSourceItems

`func (o *FreshDeskConnectRequest) SetSyncSourceItems(v bool)`

SetSyncSourceItems sets SyncSourceItems field to given value.

### HasSyncSourceItems

`func (o *FreshDeskConnectRequest) HasSyncSourceItems() bool`

HasSyncSourceItems returns a boolean if a field has been set.

### GetFileSyncConfig

`func (o *FreshDeskConnectRequest) GetFileSyncConfig() FileSyncConfigNullable`

GetFileSyncConfig returns the FileSyncConfig field if non-nil, zero value otherwise.

### GetFileSyncConfigOk

`func (o *FreshDeskConnectRequest) GetFileSyncConfigOk() (*FileSyncConfigNullable, bool)`

GetFileSyncConfigOk returns a tuple with the FileSyncConfig field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileSyncConfig

`func (o *FreshDeskConnectRequest) SetFileSyncConfig(v FileSyncConfigNullable)`

SetFileSyncConfig sets FileSyncConfig field to given value.

### HasFileSyncConfig

`func (o *FreshDeskConnectRequest) HasFileSyncConfig() bool`

HasFileSyncConfig returns a boolean if a field has been set.

### SetFileSyncConfigNil

`func (o *FreshDeskConnectRequest) SetFileSyncConfigNil(b bool)`

 SetFileSyncConfigNil sets the value for FileSyncConfig to be an explicit nil

### UnsetFileSyncConfig
`func (o *FreshDeskConnectRequest) UnsetFileSyncConfig()`

UnsetFileSyncConfig ensures that no value is present for FileSyncConfig, not even an explicit nil
### GetDataSourceTags

`func (o *FreshDeskConnectRequest) GetDataSourceTags() map[string]interface{}`

GetDataSourceTags returns the DataSourceTags field if non-nil, zero value otherwise.

### GetDataSourceTagsOk

`func (o *FreshDeskConnectRequest) GetDataSourceTagsOk() (*map[string]interface{}, bool)`

GetDataSourceTagsOk returns a tuple with the DataSourceTags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataSourceTags

`func (o *FreshDeskConnectRequest) SetDataSourceTags(v map[string]interface{})`

SetDataSourceTags sets DataSourceTags field to given value.

### HasDataSourceTags

`func (o *FreshDeskConnectRequest) HasDataSourceTags() bool`

HasDataSourceTags returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


