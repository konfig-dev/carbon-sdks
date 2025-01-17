# UserFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tags** | Pointer to **map[string]interface{}** |  | [optional] 
**Id** | **int32** |  | 
**Source** | [**DataSourceType**](DataSourceType.md) |  | 
**OrganizationId** | **int32** |  | 
**OrganizationUserId** | **NullableInt32** |  | 
**OrganizationSuppliedUserId** | **string** |  | 
**OrganizationUserDataSourceId** | Pointer to **NullableInt32** |  | [optional] 
**ExternalFileId** | **string** |  | 
**ExternalUrl** | Pointer to **NullableString** |  | [optional] 
**SyncStatus** | [**ExternalFileSyncStatuses**](ExternalFileSyncStatuses.md) |  | 
**SyncErrorMessage** | Pointer to **NullableString** |  | [optional] 
**LastSync** | Pointer to **NullableTime** |  | [optional] 
**FileStatistics** | Pointer to [**NullableFileStatisticsNullable**](FileStatisticsNullable.md) |  | [optional] 
**FileMetadata** | Pointer to **map[string]interface{}** |  | [optional] 
**EmbeddingProperties** | Pointer to [**map[string]EmbeddingProperties**](EmbeddingProperties.md) |  | [optional] 
**ChunkSize** | Pointer to **NullableInt32** |  | [optional] 
**ChunkOverlap** | Pointer to **NullableInt32** |  | [optional] 
**ChunkProperties** | Pointer to [**NullableChunkPropertiesNullable**](ChunkPropertiesNullable.md) |  | [optional] 
**OcrProperties** | Pointer to **map[string]interface{}** |  | [optional] [default to {}]
**OcrJobStartedAt** | Pointer to **NullableTime** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**ParentId** | Pointer to **NullableInt32** |  | [optional] 
**EnableAutoSync** | Pointer to **NullableBool** |  | [optional] 
**PresignedUrl** | Pointer to **NullableString** |  | [optional] 
**ParsedTextUrl** | Pointer to **NullableString** |  | [optional] 
**AdditionalPresignedUrls** | Pointer to **map[string]interface{}** |  | [optional] 
**SkipEmbeddingGeneration** | **bool** |  | 
**SourceCreatedAt** | Pointer to **NullableTime** |  | [optional] 
**GenerateSparseVectors** | Pointer to **NullableBool** |  | [optional] 
**RequestId** | Pointer to **NullableString** |  | [optional] 
**UploadId** | Pointer to **NullableString** |  | [optional] 
**SyncProperties** | Pointer to **map[string]interface{}** |  | [optional] [default to {}]
**MessagesMetadata** | Pointer to **map[string]interface{}** |  | [optional] [default to {}]
**FileContentsDeleted** | Pointer to **bool** |  | [optional] [default to false]
**SupportsColdStorage** | **bool** |  | 
**HotStorageTimeToLive** | Pointer to **NullableInt32** |  | [optional] 
**EmbeddingStorageStatus** | [**EmbeddingStorageStatus**](EmbeddingStorageStatus.md) |  | 
**CreatedAt** | **time.Time** |  | 
**UpdatedAt** | **time.Time** |  | 

## Methods

### NewUserFile

`func NewUserFile(id int32, source DataSourceType, organizationId int32, organizationUserId NullableInt32, organizationSuppliedUserId string, externalFileId string, syncStatus ExternalFileSyncStatuses, skipEmbeddingGeneration bool, supportsColdStorage bool, embeddingStorageStatus EmbeddingStorageStatus, createdAt time.Time, updatedAt time.Time, ) *UserFile`

NewUserFile instantiates a new UserFile object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserFileWithDefaults

`func NewUserFileWithDefaults() *UserFile`

NewUserFileWithDefaults instantiates a new UserFile object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTags

`func (o *UserFile) GetTags() map[string]interface{}`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *UserFile) GetTagsOk() (*map[string]interface{}, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *UserFile) SetTags(v map[string]interface{})`

SetTags sets Tags field to given value.

### HasTags

`func (o *UserFile) HasTags() bool`

HasTags returns a boolean if a field has been set.

### SetTagsNil

`func (o *UserFile) SetTagsNil(b bool)`

 SetTagsNil sets the value for Tags to be an explicit nil

### UnsetTags
`func (o *UserFile) UnsetTags()`

UnsetTags ensures that no value is present for Tags, not even an explicit nil
### GetId

`func (o *UserFile) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UserFile) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UserFile) SetId(v int32)`

SetId sets Id field to given value.


### GetSource

`func (o *UserFile) GetSource() DataSourceType`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *UserFile) GetSourceOk() (*DataSourceType, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *UserFile) SetSource(v DataSourceType)`

SetSource sets Source field to given value.


### GetOrganizationId

`func (o *UserFile) GetOrganizationId() int32`

GetOrganizationId returns the OrganizationId field if non-nil, zero value otherwise.

### GetOrganizationIdOk

`func (o *UserFile) GetOrganizationIdOk() (*int32, bool)`

GetOrganizationIdOk returns a tuple with the OrganizationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganizationId

`func (o *UserFile) SetOrganizationId(v int32)`

SetOrganizationId sets OrganizationId field to given value.


### GetOrganizationUserId

`func (o *UserFile) GetOrganizationUserId() int32`

GetOrganizationUserId returns the OrganizationUserId field if non-nil, zero value otherwise.

### GetOrganizationUserIdOk

`func (o *UserFile) GetOrganizationUserIdOk() (*int32, bool)`

GetOrganizationUserIdOk returns a tuple with the OrganizationUserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganizationUserId

`func (o *UserFile) SetOrganizationUserId(v int32)`

SetOrganizationUserId sets OrganizationUserId field to given value.


### SetOrganizationUserIdNil

`func (o *UserFile) SetOrganizationUserIdNil(b bool)`

 SetOrganizationUserIdNil sets the value for OrganizationUserId to be an explicit nil

### UnsetOrganizationUserId
`func (o *UserFile) UnsetOrganizationUserId()`

UnsetOrganizationUserId ensures that no value is present for OrganizationUserId, not even an explicit nil
### GetOrganizationSuppliedUserId

`func (o *UserFile) GetOrganizationSuppliedUserId() string`

GetOrganizationSuppliedUserId returns the OrganizationSuppliedUserId field if non-nil, zero value otherwise.

### GetOrganizationSuppliedUserIdOk

`func (o *UserFile) GetOrganizationSuppliedUserIdOk() (*string, bool)`

GetOrganizationSuppliedUserIdOk returns a tuple with the OrganizationSuppliedUserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganizationSuppliedUserId

`func (o *UserFile) SetOrganizationSuppliedUserId(v string)`

SetOrganizationSuppliedUserId sets OrganizationSuppliedUserId field to given value.


### GetOrganizationUserDataSourceId

`func (o *UserFile) GetOrganizationUserDataSourceId() int32`

GetOrganizationUserDataSourceId returns the OrganizationUserDataSourceId field if non-nil, zero value otherwise.

### GetOrganizationUserDataSourceIdOk

`func (o *UserFile) GetOrganizationUserDataSourceIdOk() (*int32, bool)`

GetOrganizationUserDataSourceIdOk returns a tuple with the OrganizationUserDataSourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganizationUserDataSourceId

`func (o *UserFile) SetOrganizationUserDataSourceId(v int32)`

SetOrganizationUserDataSourceId sets OrganizationUserDataSourceId field to given value.

### HasOrganizationUserDataSourceId

`func (o *UserFile) HasOrganizationUserDataSourceId() bool`

HasOrganizationUserDataSourceId returns a boolean if a field has been set.

### SetOrganizationUserDataSourceIdNil

`func (o *UserFile) SetOrganizationUserDataSourceIdNil(b bool)`

 SetOrganizationUserDataSourceIdNil sets the value for OrganizationUserDataSourceId to be an explicit nil

### UnsetOrganizationUserDataSourceId
`func (o *UserFile) UnsetOrganizationUserDataSourceId()`

UnsetOrganizationUserDataSourceId ensures that no value is present for OrganizationUserDataSourceId, not even an explicit nil
### GetExternalFileId

`func (o *UserFile) GetExternalFileId() string`

GetExternalFileId returns the ExternalFileId field if non-nil, zero value otherwise.

### GetExternalFileIdOk

`func (o *UserFile) GetExternalFileIdOk() (*string, bool)`

GetExternalFileIdOk returns a tuple with the ExternalFileId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalFileId

`func (o *UserFile) SetExternalFileId(v string)`

SetExternalFileId sets ExternalFileId field to given value.


### GetExternalUrl

`func (o *UserFile) GetExternalUrl() string`

GetExternalUrl returns the ExternalUrl field if non-nil, zero value otherwise.

### GetExternalUrlOk

`func (o *UserFile) GetExternalUrlOk() (*string, bool)`

GetExternalUrlOk returns a tuple with the ExternalUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalUrl

`func (o *UserFile) SetExternalUrl(v string)`

SetExternalUrl sets ExternalUrl field to given value.

### HasExternalUrl

`func (o *UserFile) HasExternalUrl() bool`

HasExternalUrl returns a boolean if a field has been set.

### SetExternalUrlNil

`func (o *UserFile) SetExternalUrlNil(b bool)`

 SetExternalUrlNil sets the value for ExternalUrl to be an explicit nil

### UnsetExternalUrl
`func (o *UserFile) UnsetExternalUrl()`

UnsetExternalUrl ensures that no value is present for ExternalUrl, not even an explicit nil
### GetSyncStatus

`func (o *UserFile) GetSyncStatus() ExternalFileSyncStatuses`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *UserFile) GetSyncStatusOk() (*ExternalFileSyncStatuses, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *UserFile) SetSyncStatus(v ExternalFileSyncStatuses)`

SetSyncStatus sets SyncStatus field to given value.


### GetSyncErrorMessage

`func (o *UserFile) GetSyncErrorMessage() string`

GetSyncErrorMessage returns the SyncErrorMessage field if non-nil, zero value otherwise.

### GetSyncErrorMessageOk

`func (o *UserFile) GetSyncErrorMessageOk() (*string, bool)`

GetSyncErrorMessageOk returns a tuple with the SyncErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncErrorMessage

`func (o *UserFile) SetSyncErrorMessage(v string)`

SetSyncErrorMessage sets SyncErrorMessage field to given value.

### HasSyncErrorMessage

`func (o *UserFile) HasSyncErrorMessage() bool`

HasSyncErrorMessage returns a boolean if a field has been set.

### SetSyncErrorMessageNil

`func (o *UserFile) SetSyncErrorMessageNil(b bool)`

 SetSyncErrorMessageNil sets the value for SyncErrorMessage to be an explicit nil

### UnsetSyncErrorMessage
`func (o *UserFile) UnsetSyncErrorMessage()`

UnsetSyncErrorMessage ensures that no value is present for SyncErrorMessage, not even an explicit nil
### GetLastSync

`func (o *UserFile) GetLastSync() time.Time`

GetLastSync returns the LastSync field if non-nil, zero value otherwise.

### GetLastSyncOk

`func (o *UserFile) GetLastSyncOk() (*time.Time, bool)`

GetLastSyncOk returns a tuple with the LastSync field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSync

`func (o *UserFile) SetLastSync(v time.Time)`

SetLastSync sets LastSync field to given value.

### HasLastSync

`func (o *UserFile) HasLastSync() bool`

HasLastSync returns a boolean if a field has been set.

### SetLastSyncNil

`func (o *UserFile) SetLastSyncNil(b bool)`

 SetLastSyncNil sets the value for LastSync to be an explicit nil

### UnsetLastSync
`func (o *UserFile) UnsetLastSync()`

UnsetLastSync ensures that no value is present for LastSync, not even an explicit nil
### GetFileStatistics

`func (o *UserFile) GetFileStatistics() FileStatisticsNullable`

GetFileStatistics returns the FileStatistics field if non-nil, zero value otherwise.

### GetFileStatisticsOk

`func (o *UserFile) GetFileStatisticsOk() (*FileStatisticsNullable, bool)`

GetFileStatisticsOk returns a tuple with the FileStatistics field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileStatistics

`func (o *UserFile) SetFileStatistics(v FileStatisticsNullable)`

SetFileStatistics sets FileStatistics field to given value.

### HasFileStatistics

`func (o *UserFile) HasFileStatistics() bool`

HasFileStatistics returns a boolean if a field has been set.

### SetFileStatisticsNil

`func (o *UserFile) SetFileStatisticsNil(b bool)`

 SetFileStatisticsNil sets the value for FileStatistics to be an explicit nil

### UnsetFileStatistics
`func (o *UserFile) UnsetFileStatistics()`

UnsetFileStatistics ensures that no value is present for FileStatistics, not even an explicit nil
### GetFileMetadata

`func (o *UserFile) GetFileMetadata() map[string]interface{}`

GetFileMetadata returns the FileMetadata field if non-nil, zero value otherwise.

### GetFileMetadataOk

`func (o *UserFile) GetFileMetadataOk() (*map[string]interface{}, bool)`

GetFileMetadataOk returns a tuple with the FileMetadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileMetadata

`func (o *UserFile) SetFileMetadata(v map[string]interface{})`

SetFileMetadata sets FileMetadata field to given value.

### HasFileMetadata

`func (o *UserFile) HasFileMetadata() bool`

HasFileMetadata returns a boolean if a field has been set.

### SetFileMetadataNil

`func (o *UserFile) SetFileMetadataNil(b bool)`

 SetFileMetadataNil sets the value for FileMetadata to be an explicit nil

### UnsetFileMetadata
`func (o *UserFile) UnsetFileMetadata()`

UnsetFileMetadata ensures that no value is present for FileMetadata, not even an explicit nil
### GetEmbeddingProperties

`func (o *UserFile) GetEmbeddingProperties() map[string]EmbeddingProperties`

GetEmbeddingProperties returns the EmbeddingProperties field if non-nil, zero value otherwise.

### GetEmbeddingPropertiesOk

`func (o *UserFile) GetEmbeddingPropertiesOk() (*map[string]EmbeddingProperties, bool)`

GetEmbeddingPropertiesOk returns a tuple with the EmbeddingProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbeddingProperties

`func (o *UserFile) SetEmbeddingProperties(v map[string]EmbeddingProperties)`

SetEmbeddingProperties sets EmbeddingProperties field to given value.

### HasEmbeddingProperties

`func (o *UserFile) HasEmbeddingProperties() bool`

HasEmbeddingProperties returns a boolean if a field has been set.

### SetEmbeddingPropertiesNil

`func (o *UserFile) SetEmbeddingPropertiesNil(b bool)`

 SetEmbeddingPropertiesNil sets the value for EmbeddingProperties to be an explicit nil

### UnsetEmbeddingProperties
`func (o *UserFile) UnsetEmbeddingProperties()`

UnsetEmbeddingProperties ensures that no value is present for EmbeddingProperties, not even an explicit nil
### GetChunkSize

`func (o *UserFile) GetChunkSize() int32`

GetChunkSize returns the ChunkSize field if non-nil, zero value otherwise.

### GetChunkSizeOk

`func (o *UserFile) GetChunkSizeOk() (*int32, bool)`

GetChunkSizeOk returns a tuple with the ChunkSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkSize

`func (o *UserFile) SetChunkSize(v int32)`

SetChunkSize sets ChunkSize field to given value.

### HasChunkSize

`func (o *UserFile) HasChunkSize() bool`

HasChunkSize returns a boolean if a field has been set.

### SetChunkSizeNil

`func (o *UserFile) SetChunkSizeNil(b bool)`

 SetChunkSizeNil sets the value for ChunkSize to be an explicit nil

### UnsetChunkSize
`func (o *UserFile) UnsetChunkSize()`

UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
### GetChunkOverlap

`func (o *UserFile) GetChunkOverlap() int32`

GetChunkOverlap returns the ChunkOverlap field if non-nil, zero value otherwise.

### GetChunkOverlapOk

`func (o *UserFile) GetChunkOverlapOk() (*int32, bool)`

GetChunkOverlapOk returns a tuple with the ChunkOverlap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkOverlap

`func (o *UserFile) SetChunkOverlap(v int32)`

SetChunkOverlap sets ChunkOverlap field to given value.

### HasChunkOverlap

`func (o *UserFile) HasChunkOverlap() bool`

HasChunkOverlap returns a boolean if a field has been set.

### SetChunkOverlapNil

`func (o *UserFile) SetChunkOverlapNil(b bool)`

 SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil

### UnsetChunkOverlap
`func (o *UserFile) UnsetChunkOverlap()`

UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
### GetChunkProperties

`func (o *UserFile) GetChunkProperties() ChunkPropertiesNullable`

GetChunkProperties returns the ChunkProperties field if non-nil, zero value otherwise.

### GetChunkPropertiesOk

`func (o *UserFile) GetChunkPropertiesOk() (*ChunkPropertiesNullable, bool)`

GetChunkPropertiesOk returns a tuple with the ChunkProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChunkProperties

`func (o *UserFile) SetChunkProperties(v ChunkPropertiesNullable)`

SetChunkProperties sets ChunkProperties field to given value.

### HasChunkProperties

`func (o *UserFile) HasChunkProperties() bool`

HasChunkProperties returns a boolean if a field has been set.

### SetChunkPropertiesNil

`func (o *UserFile) SetChunkPropertiesNil(b bool)`

 SetChunkPropertiesNil sets the value for ChunkProperties to be an explicit nil

### UnsetChunkProperties
`func (o *UserFile) UnsetChunkProperties()`

UnsetChunkProperties ensures that no value is present for ChunkProperties, not even an explicit nil
### GetOcrProperties

`func (o *UserFile) GetOcrProperties() map[string]interface{}`

GetOcrProperties returns the OcrProperties field if non-nil, zero value otherwise.

### GetOcrPropertiesOk

`func (o *UserFile) GetOcrPropertiesOk() (*map[string]interface{}, bool)`

GetOcrPropertiesOk returns a tuple with the OcrProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOcrProperties

`func (o *UserFile) SetOcrProperties(v map[string]interface{})`

SetOcrProperties sets OcrProperties field to given value.

### HasOcrProperties

`func (o *UserFile) HasOcrProperties() bool`

HasOcrProperties returns a boolean if a field has been set.

### GetOcrJobStartedAt

`func (o *UserFile) GetOcrJobStartedAt() time.Time`

GetOcrJobStartedAt returns the OcrJobStartedAt field if non-nil, zero value otherwise.

### GetOcrJobStartedAtOk

`func (o *UserFile) GetOcrJobStartedAtOk() (*time.Time, bool)`

GetOcrJobStartedAtOk returns a tuple with the OcrJobStartedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOcrJobStartedAt

`func (o *UserFile) SetOcrJobStartedAt(v time.Time)`

SetOcrJobStartedAt sets OcrJobStartedAt field to given value.

### HasOcrJobStartedAt

`func (o *UserFile) HasOcrJobStartedAt() bool`

HasOcrJobStartedAt returns a boolean if a field has been set.

### SetOcrJobStartedAtNil

`func (o *UserFile) SetOcrJobStartedAtNil(b bool)`

 SetOcrJobStartedAtNil sets the value for OcrJobStartedAt to be an explicit nil

### UnsetOcrJobStartedAt
`func (o *UserFile) UnsetOcrJobStartedAt()`

UnsetOcrJobStartedAt ensures that no value is present for OcrJobStartedAt, not even an explicit nil
### GetName

`func (o *UserFile) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UserFile) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UserFile) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UserFile) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *UserFile) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *UserFile) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetParentId

`func (o *UserFile) GetParentId() int32`

GetParentId returns the ParentId field if non-nil, zero value otherwise.

### GetParentIdOk

`func (o *UserFile) GetParentIdOk() (*int32, bool)`

GetParentIdOk returns a tuple with the ParentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentId

`func (o *UserFile) SetParentId(v int32)`

SetParentId sets ParentId field to given value.

### HasParentId

`func (o *UserFile) HasParentId() bool`

HasParentId returns a boolean if a field has been set.

### SetParentIdNil

`func (o *UserFile) SetParentIdNil(b bool)`

 SetParentIdNil sets the value for ParentId to be an explicit nil

### UnsetParentId
`func (o *UserFile) UnsetParentId()`

UnsetParentId ensures that no value is present for ParentId, not even an explicit nil
### GetEnableAutoSync

`func (o *UserFile) GetEnableAutoSync() bool`

GetEnableAutoSync returns the EnableAutoSync field if non-nil, zero value otherwise.

### GetEnableAutoSyncOk

`func (o *UserFile) GetEnableAutoSyncOk() (*bool, bool)`

GetEnableAutoSyncOk returns a tuple with the EnableAutoSync field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnableAutoSync

`func (o *UserFile) SetEnableAutoSync(v bool)`

SetEnableAutoSync sets EnableAutoSync field to given value.

### HasEnableAutoSync

`func (o *UserFile) HasEnableAutoSync() bool`

HasEnableAutoSync returns a boolean if a field has been set.

### SetEnableAutoSyncNil

`func (o *UserFile) SetEnableAutoSyncNil(b bool)`

 SetEnableAutoSyncNil sets the value for EnableAutoSync to be an explicit nil

### UnsetEnableAutoSync
`func (o *UserFile) UnsetEnableAutoSync()`

UnsetEnableAutoSync ensures that no value is present for EnableAutoSync, not even an explicit nil
### GetPresignedUrl

`func (o *UserFile) GetPresignedUrl() string`

GetPresignedUrl returns the PresignedUrl field if non-nil, zero value otherwise.

### GetPresignedUrlOk

`func (o *UserFile) GetPresignedUrlOk() (*string, bool)`

GetPresignedUrlOk returns a tuple with the PresignedUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPresignedUrl

`func (o *UserFile) SetPresignedUrl(v string)`

SetPresignedUrl sets PresignedUrl field to given value.

### HasPresignedUrl

`func (o *UserFile) HasPresignedUrl() bool`

HasPresignedUrl returns a boolean if a field has been set.

### SetPresignedUrlNil

`func (o *UserFile) SetPresignedUrlNil(b bool)`

 SetPresignedUrlNil sets the value for PresignedUrl to be an explicit nil

### UnsetPresignedUrl
`func (o *UserFile) UnsetPresignedUrl()`

UnsetPresignedUrl ensures that no value is present for PresignedUrl, not even an explicit nil
### GetParsedTextUrl

`func (o *UserFile) GetParsedTextUrl() string`

GetParsedTextUrl returns the ParsedTextUrl field if non-nil, zero value otherwise.

### GetParsedTextUrlOk

`func (o *UserFile) GetParsedTextUrlOk() (*string, bool)`

GetParsedTextUrlOk returns a tuple with the ParsedTextUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParsedTextUrl

`func (o *UserFile) SetParsedTextUrl(v string)`

SetParsedTextUrl sets ParsedTextUrl field to given value.

### HasParsedTextUrl

`func (o *UserFile) HasParsedTextUrl() bool`

HasParsedTextUrl returns a boolean if a field has been set.

### SetParsedTextUrlNil

`func (o *UserFile) SetParsedTextUrlNil(b bool)`

 SetParsedTextUrlNil sets the value for ParsedTextUrl to be an explicit nil

### UnsetParsedTextUrl
`func (o *UserFile) UnsetParsedTextUrl()`

UnsetParsedTextUrl ensures that no value is present for ParsedTextUrl, not even an explicit nil
### GetAdditionalPresignedUrls

`func (o *UserFile) GetAdditionalPresignedUrls() map[string]interface{}`

GetAdditionalPresignedUrls returns the AdditionalPresignedUrls field if non-nil, zero value otherwise.

### GetAdditionalPresignedUrlsOk

`func (o *UserFile) GetAdditionalPresignedUrlsOk() (*map[string]interface{}, bool)`

GetAdditionalPresignedUrlsOk returns a tuple with the AdditionalPresignedUrls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdditionalPresignedUrls

`func (o *UserFile) SetAdditionalPresignedUrls(v map[string]interface{})`

SetAdditionalPresignedUrls sets AdditionalPresignedUrls field to given value.

### HasAdditionalPresignedUrls

`func (o *UserFile) HasAdditionalPresignedUrls() bool`

HasAdditionalPresignedUrls returns a boolean if a field has been set.

### SetAdditionalPresignedUrlsNil

`func (o *UserFile) SetAdditionalPresignedUrlsNil(b bool)`

 SetAdditionalPresignedUrlsNil sets the value for AdditionalPresignedUrls to be an explicit nil

### UnsetAdditionalPresignedUrls
`func (o *UserFile) UnsetAdditionalPresignedUrls()`

UnsetAdditionalPresignedUrls ensures that no value is present for AdditionalPresignedUrls, not even an explicit nil
### GetSkipEmbeddingGeneration

`func (o *UserFile) GetSkipEmbeddingGeneration() bool`

GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field if non-nil, zero value otherwise.

### GetSkipEmbeddingGenerationOk

`func (o *UserFile) GetSkipEmbeddingGenerationOk() (*bool, bool)`

GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipEmbeddingGeneration

`func (o *UserFile) SetSkipEmbeddingGeneration(v bool)`

SetSkipEmbeddingGeneration sets SkipEmbeddingGeneration field to given value.


### GetSourceCreatedAt

`func (o *UserFile) GetSourceCreatedAt() time.Time`

GetSourceCreatedAt returns the SourceCreatedAt field if non-nil, zero value otherwise.

### GetSourceCreatedAtOk

`func (o *UserFile) GetSourceCreatedAtOk() (*time.Time, bool)`

GetSourceCreatedAtOk returns a tuple with the SourceCreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceCreatedAt

`func (o *UserFile) SetSourceCreatedAt(v time.Time)`

SetSourceCreatedAt sets SourceCreatedAt field to given value.

### HasSourceCreatedAt

`func (o *UserFile) HasSourceCreatedAt() bool`

HasSourceCreatedAt returns a boolean if a field has been set.

### SetSourceCreatedAtNil

`func (o *UserFile) SetSourceCreatedAtNil(b bool)`

 SetSourceCreatedAtNil sets the value for SourceCreatedAt to be an explicit nil

### UnsetSourceCreatedAt
`func (o *UserFile) UnsetSourceCreatedAt()`

UnsetSourceCreatedAt ensures that no value is present for SourceCreatedAt, not even an explicit nil
### GetGenerateSparseVectors

`func (o *UserFile) GetGenerateSparseVectors() bool`

GetGenerateSparseVectors returns the GenerateSparseVectors field if non-nil, zero value otherwise.

### GetGenerateSparseVectorsOk

`func (o *UserFile) GetGenerateSparseVectorsOk() (*bool, bool)`

GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenerateSparseVectors

`func (o *UserFile) SetGenerateSparseVectors(v bool)`

SetGenerateSparseVectors sets GenerateSparseVectors field to given value.

### HasGenerateSparseVectors

`func (o *UserFile) HasGenerateSparseVectors() bool`

HasGenerateSparseVectors returns a boolean if a field has been set.

### SetGenerateSparseVectorsNil

`func (o *UserFile) SetGenerateSparseVectorsNil(b bool)`

 SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil

### UnsetGenerateSparseVectors
`func (o *UserFile) UnsetGenerateSparseVectors()`

UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
### GetRequestId

`func (o *UserFile) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *UserFile) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *UserFile) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *UserFile) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### SetRequestIdNil

`func (o *UserFile) SetRequestIdNil(b bool)`

 SetRequestIdNil sets the value for RequestId to be an explicit nil

### UnsetRequestId
`func (o *UserFile) UnsetRequestId()`

UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
### GetUploadId

`func (o *UserFile) GetUploadId() string`

GetUploadId returns the UploadId field if non-nil, zero value otherwise.

### GetUploadIdOk

`func (o *UserFile) GetUploadIdOk() (*string, bool)`

GetUploadIdOk returns a tuple with the UploadId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUploadId

`func (o *UserFile) SetUploadId(v string)`

SetUploadId sets UploadId field to given value.

### HasUploadId

`func (o *UserFile) HasUploadId() bool`

HasUploadId returns a boolean if a field has been set.

### SetUploadIdNil

`func (o *UserFile) SetUploadIdNil(b bool)`

 SetUploadIdNil sets the value for UploadId to be an explicit nil

### UnsetUploadId
`func (o *UserFile) UnsetUploadId()`

UnsetUploadId ensures that no value is present for UploadId, not even an explicit nil
### GetSyncProperties

`func (o *UserFile) GetSyncProperties() map[string]interface{}`

GetSyncProperties returns the SyncProperties field if non-nil, zero value otherwise.

### GetSyncPropertiesOk

`func (o *UserFile) GetSyncPropertiesOk() (*map[string]interface{}, bool)`

GetSyncPropertiesOk returns a tuple with the SyncProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncProperties

`func (o *UserFile) SetSyncProperties(v map[string]interface{})`

SetSyncProperties sets SyncProperties field to given value.

### HasSyncProperties

`func (o *UserFile) HasSyncProperties() bool`

HasSyncProperties returns a boolean if a field has been set.

### GetMessagesMetadata

`func (o *UserFile) GetMessagesMetadata() map[string]interface{}`

GetMessagesMetadata returns the MessagesMetadata field if non-nil, zero value otherwise.

### GetMessagesMetadataOk

`func (o *UserFile) GetMessagesMetadataOk() (*map[string]interface{}, bool)`

GetMessagesMetadataOk returns a tuple with the MessagesMetadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessagesMetadata

`func (o *UserFile) SetMessagesMetadata(v map[string]interface{})`

SetMessagesMetadata sets MessagesMetadata field to given value.

### HasMessagesMetadata

`func (o *UserFile) HasMessagesMetadata() bool`

HasMessagesMetadata returns a boolean if a field has been set.

### GetFileContentsDeleted

`func (o *UserFile) GetFileContentsDeleted() bool`

GetFileContentsDeleted returns the FileContentsDeleted field if non-nil, zero value otherwise.

### GetFileContentsDeletedOk

`func (o *UserFile) GetFileContentsDeletedOk() (*bool, bool)`

GetFileContentsDeletedOk returns a tuple with the FileContentsDeleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileContentsDeleted

`func (o *UserFile) SetFileContentsDeleted(v bool)`

SetFileContentsDeleted sets FileContentsDeleted field to given value.

### HasFileContentsDeleted

`func (o *UserFile) HasFileContentsDeleted() bool`

HasFileContentsDeleted returns a boolean if a field has been set.

### GetSupportsColdStorage

`func (o *UserFile) GetSupportsColdStorage() bool`

GetSupportsColdStorage returns the SupportsColdStorage field if non-nil, zero value otherwise.

### GetSupportsColdStorageOk

`func (o *UserFile) GetSupportsColdStorageOk() (*bool, bool)`

GetSupportsColdStorageOk returns a tuple with the SupportsColdStorage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupportsColdStorage

`func (o *UserFile) SetSupportsColdStorage(v bool)`

SetSupportsColdStorage sets SupportsColdStorage field to given value.


### GetHotStorageTimeToLive

`func (o *UserFile) GetHotStorageTimeToLive() int32`

GetHotStorageTimeToLive returns the HotStorageTimeToLive field if non-nil, zero value otherwise.

### GetHotStorageTimeToLiveOk

`func (o *UserFile) GetHotStorageTimeToLiveOk() (*int32, bool)`

GetHotStorageTimeToLiveOk returns a tuple with the HotStorageTimeToLive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHotStorageTimeToLive

`func (o *UserFile) SetHotStorageTimeToLive(v int32)`

SetHotStorageTimeToLive sets HotStorageTimeToLive field to given value.

### HasHotStorageTimeToLive

`func (o *UserFile) HasHotStorageTimeToLive() bool`

HasHotStorageTimeToLive returns a boolean if a field has been set.

### SetHotStorageTimeToLiveNil

`func (o *UserFile) SetHotStorageTimeToLiveNil(b bool)`

 SetHotStorageTimeToLiveNil sets the value for HotStorageTimeToLive to be an explicit nil

### UnsetHotStorageTimeToLive
`func (o *UserFile) UnsetHotStorageTimeToLive()`

UnsetHotStorageTimeToLive ensures that no value is present for HotStorageTimeToLive, not even an explicit nil
### GetEmbeddingStorageStatus

`func (o *UserFile) GetEmbeddingStorageStatus() EmbeddingStorageStatus`

GetEmbeddingStorageStatus returns the EmbeddingStorageStatus field if non-nil, zero value otherwise.

### GetEmbeddingStorageStatusOk

`func (o *UserFile) GetEmbeddingStorageStatusOk() (*EmbeddingStorageStatus, bool)`

GetEmbeddingStorageStatusOk returns a tuple with the EmbeddingStorageStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbeddingStorageStatus

`func (o *UserFile) SetEmbeddingStorageStatus(v EmbeddingStorageStatus)`

SetEmbeddingStorageStatus sets EmbeddingStorageStatus field to given value.


### GetCreatedAt

`func (o *UserFile) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *UserFile) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *UserFile) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetUpdatedAt

`func (o *UserFile) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *UserFile) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *UserFile) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


