/*
Carbon

Connect external data to LLMs, no matter the source.

API version: 1.0.0
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package carbon

import (
	"encoding/json"
	"time"
)

// UserFile struct for UserFile
type UserFile struct {
	Tags map[string]interface{} `json:"tags"`
	Id int32 `json:"id"`
	Source DataSourceType `json:"source"`
	OrganizationId int32 `json:"organization_id"`
	OrganizationUserId NullableInt32 `json:"organization_user_id"`
	OrganizationSuppliedUserId string `json:"organization_supplied_user_id"`
	OrganizationUserDataSourceId NullableInt32 `json:"organization_user_data_source_id"`
	ExternalFileId string `json:"external_file_id"`
	ExternalUrl NullableString `json:"external_url"`
	SyncStatus ExternalFileSyncStatuses `json:"sync_status"`
	SyncErrorMessage NullableString `json:"sync_error_message"`
	LastSync NullableTime `json:"last_sync"`
	FileStatistics NullableFileStatisticsNullable `json:"file_statistics"`
	FileMetadata map[string]interface{} `json:"file_metadata"`
	EmbeddingProperties map[string]EmbeddingProperties `json:"embedding_properties"`
	ChunkSize NullableInt32 `json:"chunk_size"`
	ChunkOverlap NullableInt32 `json:"chunk_overlap"`
	ChunkProperties NullableChunkPropertiesNullable `json:"chunk_properties"`
	OcrProperties map[string]interface{} `json:"ocr_properties"`
	OcrJobStartedAt NullableTime `json:"ocr_job_started_at"`
	Name NullableString `json:"name"`
	ParentId NullableInt32 `json:"parent_id"`
	EnableAutoSync NullableBool `json:"enable_auto_sync"`
	PresignedUrl NullableString `json:"presigned_url"`
	ParsedTextUrl NullableString `json:"parsed_text_url"`
	AdditionalPresignedUrls map[string]interface{} `json:"additional_presigned_urls"`
	SkipEmbeddingGeneration bool `json:"skip_embedding_generation"`
	SourceCreatedAt NullableTime `json:"source_created_at"`
	GenerateSparseVectors NullableBool `json:"generate_sparse_vectors"`
	RequestId NullableString `json:"request_id"`
	UploadId NullableString `json:"upload_id"`
	SyncProperties map[string]interface{} `json:"sync_properties"`
	MessagesMetadata map[string]interface{} `json:"messages_metadata"`
	FileContentsDeleted bool `json:"file_contents_deleted"`
	SupportsColdStorage bool `json:"supports_cold_storage"`
	HotStorageTimeToLive NullableInt32 `json:"hot_storage_time_to_live"`
	EmbeddingStorageStatus EmbeddingStorageStatus `json:"embedding_storage_status"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}

// NewUserFile instantiates a new UserFile object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUserFile(tags map[string]interface{}, id int32, source DataSourceType, organizationId int32, organizationUserId NullableInt32, organizationSuppliedUserId string, organizationUserDataSourceId NullableInt32, externalFileId string, externalUrl NullableString, syncStatus ExternalFileSyncStatuses, syncErrorMessage NullableString, lastSync NullableTime, fileStatistics NullableFileStatisticsNullable, fileMetadata map[string]interface{}, embeddingProperties map[string]EmbeddingProperties, chunkSize NullableInt32, chunkOverlap NullableInt32, chunkProperties NullableChunkPropertiesNullable, ocrProperties map[string]interface{}, ocrJobStartedAt NullableTime, name NullableString, parentId NullableInt32, enableAutoSync NullableBool, presignedUrl NullableString, parsedTextUrl NullableString, additionalPresignedUrls map[string]interface{}, skipEmbeddingGeneration bool, sourceCreatedAt NullableTime, generateSparseVectors NullableBool, requestId NullableString, uploadId NullableString, syncProperties map[string]interface{}, messagesMetadata map[string]interface{}, fileContentsDeleted bool, supportsColdStorage bool, hotStorageTimeToLive NullableInt32, embeddingStorageStatus EmbeddingStorageStatus, createdAt time.Time, updatedAt time.Time) *UserFile {
	this := UserFile{}
	this.Tags = tags
	this.Id = id
	this.Source = source
	this.OrganizationId = organizationId
	this.OrganizationUserId = organizationUserId
	this.OrganizationSuppliedUserId = organizationSuppliedUserId
	this.OrganizationUserDataSourceId = organizationUserDataSourceId
	this.ExternalFileId = externalFileId
	this.ExternalUrl = externalUrl
	this.SyncStatus = syncStatus
	this.SyncErrorMessage = syncErrorMessage
	this.LastSync = lastSync
	this.FileStatistics = fileStatistics
	this.FileMetadata = fileMetadata
	this.EmbeddingProperties = embeddingProperties
	this.ChunkSize = chunkSize
	this.ChunkOverlap = chunkOverlap
	this.ChunkProperties = chunkProperties
	this.OcrProperties = ocrProperties
	this.OcrJobStartedAt = ocrJobStartedAt
	this.Name = name
	this.ParentId = parentId
	this.EnableAutoSync = enableAutoSync
	this.PresignedUrl = presignedUrl
	this.ParsedTextUrl = parsedTextUrl
	this.AdditionalPresignedUrls = additionalPresignedUrls
	this.SkipEmbeddingGeneration = skipEmbeddingGeneration
	this.SourceCreatedAt = sourceCreatedAt
	this.GenerateSparseVectors = generateSparseVectors
	this.RequestId = requestId
	this.UploadId = uploadId
	this.SyncProperties = syncProperties
	this.MessagesMetadata = messagesMetadata
	this.FileContentsDeleted = fileContentsDeleted
	this.SupportsColdStorage = supportsColdStorage
	this.HotStorageTimeToLive = hotStorageTimeToLive
	this.EmbeddingStorageStatus = embeddingStorageStatus
	this.CreatedAt = createdAt
	this.UpdatedAt = updatedAt
	return &this
}

// NewUserFileWithDefaults instantiates a new UserFile object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUserFileWithDefaults() *UserFile {
	this := UserFile{}
	var fileContentsDeleted bool = false
	this.FileContentsDeleted = fileContentsDeleted
	return &this
}

// GetTags returns the Tags field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *UserFile) GetTags() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.Tags
}

// GetTagsOk returns a tuple with the Tags field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetTagsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Tags) {
    return map[string]interface{}{}, false
	}
	return o.Tags, true
}

// SetTags sets field value
func (o *UserFile) SetTags(v map[string]interface{}) {
	o.Tags = v
}

// GetId returns the Id field value
func (o *UserFile) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *UserFile) SetId(v int32) {
	o.Id = v
}

// GetSource returns the Source field value
func (o *UserFile) GetSource() DataSourceType {
	if o == nil {
		var ret DataSourceType
		return ret
	}

	return o.Source
}

// GetSourceOk returns a tuple with the Source field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetSourceOk() (*DataSourceType, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Source, true
}

// SetSource sets field value
func (o *UserFile) SetSource(v DataSourceType) {
	o.Source = v
}

// GetOrganizationId returns the OrganizationId field value
func (o *UserFile) GetOrganizationId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.OrganizationId
}

// GetOrganizationIdOk returns a tuple with the OrganizationId field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetOrganizationIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationId, true
}

// SetOrganizationId sets field value
func (o *UserFile) SetOrganizationId(v int32) {
	o.OrganizationId = v
}

// GetOrganizationUserId returns the OrganizationUserId field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetOrganizationUserId() int32 {
	if o == nil || o.OrganizationUserId.Get() == nil {
		var ret int32
		return ret
	}

	return *o.OrganizationUserId.Get()
}

// GetOrganizationUserIdOk returns a tuple with the OrganizationUserId field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetOrganizationUserIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.OrganizationUserId.Get(), o.OrganizationUserId.IsSet()
}

// SetOrganizationUserId sets field value
func (o *UserFile) SetOrganizationUserId(v int32) {
	o.OrganizationUserId.Set(&v)
}

// GetOrganizationSuppliedUserId returns the OrganizationSuppliedUserId field value
func (o *UserFile) GetOrganizationSuppliedUserId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OrganizationSuppliedUserId
}

// GetOrganizationSuppliedUserIdOk returns a tuple with the OrganizationSuppliedUserId field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetOrganizationSuppliedUserIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationSuppliedUserId, true
}

// SetOrganizationSuppliedUserId sets field value
func (o *UserFile) SetOrganizationSuppliedUserId(v string) {
	o.OrganizationSuppliedUserId = v
}

// GetOrganizationUserDataSourceId returns the OrganizationUserDataSourceId field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetOrganizationUserDataSourceId() int32 {
	if o == nil || o.OrganizationUserDataSourceId.Get() == nil {
		var ret int32
		return ret
	}

	return *o.OrganizationUserDataSourceId.Get()
}

// GetOrganizationUserDataSourceIdOk returns a tuple with the OrganizationUserDataSourceId field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetOrganizationUserDataSourceIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.OrganizationUserDataSourceId.Get(), o.OrganizationUserDataSourceId.IsSet()
}

// SetOrganizationUserDataSourceId sets field value
func (o *UserFile) SetOrganizationUserDataSourceId(v int32) {
	o.OrganizationUserDataSourceId.Set(&v)
}

// GetExternalFileId returns the ExternalFileId field value
func (o *UserFile) GetExternalFileId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ExternalFileId
}

// GetExternalFileIdOk returns a tuple with the ExternalFileId field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetExternalFileIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ExternalFileId, true
}

// SetExternalFileId sets field value
func (o *UserFile) SetExternalFileId(v string) {
	o.ExternalFileId = v
}

// GetExternalUrl returns the ExternalUrl field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetExternalUrl() string {
	if o == nil || o.ExternalUrl.Get() == nil {
		var ret string
		return ret
	}

	return *o.ExternalUrl.Get()
}

// GetExternalUrlOk returns a tuple with the ExternalUrl field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetExternalUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ExternalUrl.Get(), o.ExternalUrl.IsSet()
}

// SetExternalUrl sets field value
func (o *UserFile) SetExternalUrl(v string) {
	o.ExternalUrl.Set(&v)
}

// GetSyncStatus returns the SyncStatus field value
func (o *UserFile) GetSyncStatus() ExternalFileSyncStatuses {
	if o == nil {
		var ret ExternalFileSyncStatuses
		return ret
	}

	return o.SyncStatus
}

// GetSyncStatusOk returns a tuple with the SyncStatus field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetSyncStatusOk() (*ExternalFileSyncStatuses, bool) {
	if o == nil {
    return nil, false
	}
	return &o.SyncStatus, true
}

// SetSyncStatus sets field value
func (o *UserFile) SetSyncStatus(v ExternalFileSyncStatuses) {
	o.SyncStatus = v
}

// GetSyncErrorMessage returns the SyncErrorMessage field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetSyncErrorMessage() string {
	if o == nil || o.SyncErrorMessage.Get() == nil {
		var ret string
		return ret
	}

	return *o.SyncErrorMessage.Get()
}

// GetSyncErrorMessageOk returns a tuple with the SyncErrorMessage field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetSyncErrorMessageOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.SyncErrorMessage.Get(), o.SyncErrorMessage.IsSet()
}

// SetSyncErrorMessage sets field value
func (o *UserFile) SetSyncErrorMessage(v string) {
	o.SyncErrorMessage.Set(&v)
}

// GetLastSync returns the LastSync field value
// If the value is explicit nil, the zero value for time.Time will be returned
func (o *UserFile) GetLastSync() time.Time {
	if o == nil || o.LastSync.Get() == nil {
		var ret time.Time
		return ret
	}

	return *o.LastSync.Get()
}

// GetLastSyncOk returns a tuple with the LastSync field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetLastSyncOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return o.LastSync.Get(), o.LastSync.IsSet()
}

// SetLastSync sets field value
func (o *UserFile) SetLastSync(v time.Time) {
	o.LastSync.Set(&v)
}

// GetFileStatistics returns the FileStatistics field value
// If the value is explicit nil, the zero value for FileStatisticsNullable will be returned
func (o *UserFile) GetFileStatistics() FileStatisticsNullable {
	if o == nil || o.FileStatistics.Get() == nil {
		var ret FileStatisticsNullable
		return ret
	}

	return *o.FileStatistics.Get()
}

// GetFileStatisticsOk returns a tuple with the FileStatistics field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetFileStatisticsOk() (*FileStatisticsNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.FileStatistics.Get(), o.FileStatistics.IsSet()
}

// SetFileStatistics sets field value
func (o *UserFile) SetFileStatistics(v FileStatisticsNullable) {
	o.FileStatistics.Set(&v)
}

// GetFileMetadata returns the FileMetadata field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *UserFile) GetFileMetadata() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.FileMetadata
}

// GetFileMetadataOk returns a tuple with the FileMetadata field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetFileMetadataOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.FileMetadata) {
    return map[string]interface{}{}, false
	}
	return o.FileMetadata, true
}

// SetFileMetadata sets field value
func (o *UserFile) SetFileMetadata(v map[string]interface{}) {
	o.FileMetadata = v
}

// GetEmbeddingProperties returns the EmbeddingProperties field value
// If the value is explicit nil, the zero value for map[string]EmbeddingProperties will be returned
func (o *UserFile) GetEmbeddingProperties() map[string]EmbeddingProperties {
	if o == nil {
		var ret map[string]EmbeddingProperties
		return ret
	}

	return o.EmbeddingProperties
}

// GetEmbeddingPropertiesOk returns a tuple with the EmbeddingProperties field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetEmbeddingPropertiesOk() (*map[string]EmbeddingProperties, bool) {
	if o == nil || isNil(o.EmbeddingProperties) {
    return nil, false
	}
	return &o.EmbeddingProperties, true
}

// SetEmbeddingProperties sets field value
func (o *UserFile) SetEmbeddingProperties(v map[string]EmbeddingProperties) {
	o.EmbeddingProperties = v
}

// GetChunkSize returns the ChunkSize field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetChunkSize() int32 {
	if o == nil || o.ChunkSize.Get() == nil {
		var ret int32
		return ret
	}

	return *o.ChunkSize.Get()
}

// GetChunkSizeOk returns a tuple with the ChunkSize field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetChunkSizeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkSize.Get(), o.ChunkSize.IsSet()
}

// SetChunkSize sets field value
func (o *UserFile) SetChunkSize(v int32) {
	o.ChunkSize.Set(&v)
}

// GetChunkOverlap returns the ChunkOverlap field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetChunkOverlap() int32 {
	if o == nil || o.ChunkOverlap.Get() == nil {
		var ret int32
		return ret
	}

	return *o.ChunkOverlap.Get()
}

// GetChunkOverlapOk returns a tuple with the ChunkOverlap field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetChunkOverlapOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkOverlap.Get(), o.ChunkOverlap.IsSet()
}

// SetChunkOverlap sets field value
func (o *UserFile) SetChunkOverlap(v int32) {
	o.ChunkOverlap.Set(&v)
}

// GetChunkProperties returns the ChunkProperties field value
// If the value is explicit nil, the zero value for ChunkPropertiesNullable will be returned
func (o *UserFile) GetChunkProperties() ChunkPropertiesNullable {
	if o == nil || o.ChunkProperties.Get() == nil {
		var ret ChunkPropertiesNullable
		return ret
	}

	return *o.ChunkProperties.Get()
}

// GetChunkPropertiesOk returns a tuple with the ChunkProperties field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetChunkPropertiesOk() (*ChunkPropertiesNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkProperties.Get(), o.ChunkProperties.IsSet()
}

// SetChunkProperties sets field value
func (o *UserFile) SetChunkProperties(v ChunkPropertiesNullable) {
	o.ChunkProperties.Set(&v)
}

// GetOcrProperties returns the OcrProperties field value
func (o *UserFile) GetOcrProperties() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.OcrProperties
}

// GetOcrPropertiesOk returns a tuple with the OcrProperties field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetOcrPropertiesOk() (map[string]interface{}, bool) {
	if o == nil {
    return map[string]interface{}{}, false
	}
	return o.OcrProperties, true
}

// SetOcrProperties sets field value
func (o *UserFile) SetOcrProperties(v map[string]interface{}) {
	o.OcrProperties = v
}

// GetOcrJobStartedAt returns the OcrJobStartedAt field value
// If the value is explicit nil, the zero value for time.Time will be returned
func (o *UserFile) GetOcrJobStartedAt() time.Time {
	if o == nil || o.OcrJobStartedAt.Get() == nil {
		var ret time.Time
		return ret
	}

	return *o.OcrJobStartedAt.Get()
}

// GetOcrJobStartedAtOk returns a tuple with the OcrJobStartedAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetOcrJobStartedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return o.OcrJobStartedAt.Get(), o.OcrJobStartedAt.IsSet()
}

// SetOcrJobStartedAt sets field value
func (o *UserFile) SetOcrJobStartedAt(v time.Time) {
	o.OcrJobStartedAt.Set(&v)
}

// GetName returns the Name field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetName() string {
	if o == nil || o.Name.Get() == nil {
		var ret string
		return ret
	}

	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// SetName sets field value
func (o *UserFile) SetName(v string) {
	o.Name.Set(&v)
}

// GetParentId returns the ParentId field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetParentId() int32 {
	if o == nil || o.ParentId.Get() == nil {
		var ret int32
		return ret
	}

	return *o.ParentId.Get()
}

// GetParentIdOk returns a tuple with the ParentId field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetParentIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ParentId.Get(), o.ParentId.IsSet()
}

// SetParentId sets field value
func (o *UserFile) SetParentId(v int32) {
	o.ParentId.Set(&v)
}

// GetEnableAutoSync returns the EnableAutoSync field value
// If the value is explicit nil, the zero value for bool will be returned
func (o *UserFile) GetEnableAutoSync() bool {
	if o == nil || o.EnableAutoSync.Get() == nil {
		var ret bool
		return ret
	}

	return *o.EnableAutoSync.Get()
}

// GetEnableAutoSyncOk returns a tuple with the EnableAutoSync field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetEnableAutoSyncOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.EnableAutoSync.Get(), o.EnableAutoSync.IsSet()
}

// SetEnableAutoSync sets field value
func (o *UserFile) SetEnableAutoSync(v bool) {
	o.EnableAutoSync.Set(&v)
}

// GetPresignedUrl returns the PresignedUrl field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetPresignedUrl() string {
	if o == nil || o.PresignedUrl.Get() == nil {
		var ret string
		return ret
	}

	return *o.PresignedUrl.Get()
}

// GetPresignedUrlOk returns a tuple with the PresignedUrl field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetPresignedUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.PresignedUrl.Get(), o.PresignedUrl.IsSet()
}

// SetPresignedUrl sets field value
func (o *UserFile) SetPresignedUrl(v string) {
	o.PresignedUrl.Set(&v)
}

// GetParsedTextUrl returns the ParsedTextUrl field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetParsedTextUrl() string {
	if o == nil || o.ParsedTextUrl.Get() == nil {
		var ret string
		return ret
	}

	return *o.ParsedTextUrl.Get()
}

// GetParsedTextUrlOk returns a tuple with the ParsedTextUrl field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetParsedTextUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ParsedTextUrl.Get(), o.ParsedTextUrl.IsSet()
}

// SetParsedTextUrl sets field value
func (o *UserFile) SetParsedTextUrl(v string) {
	o.ParsedTextUrl.Set(&v)
}

// GetAdditionalPresignedUrls returns the AdditionalPresignedUrls field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *UserFile) GetAdditionalPresignedUrls() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.AdditionalPresignedUrls
}

// GetAdditionalPresignedUrlsOk returns a tuple with the AdditionalPresignedUrls field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetAdditionalPresignedUrlsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.AdditionalPresignedUrls) {
    return map[string]interface{}{}, false
	}
	return o.AdditionalPresignedUrls, true
}

// SetAdditionalPresignedUrls sets field value
func (o *UserFile) SetAdditionalPresignedUrls(v map[string]interface{}) {
	o.AdditionalPresignedUrls = v
}

// GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field value
func (o *UserFile) GetSkipEmbeddingGeneration() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.SkipEmbeddingGeneration
}

// GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetSkipEmbeddingGenerationOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return &o.SkipEmbeddingGeneration, true
}

// SetSkipEmbeddingGeneration sets field value
func (o *UserFile) SetSkipEmbeddingGeneration(v bool) {
	o.SkipEmbeddingGeneration = v
}

// GetSourceCreatedAt returns the SourceCreatedAt field value
// If the value is explicit nil, the zero value for time.Time will be returned
func (o *UserFile) GetSourceCreatedAt() time.Time {
	if o == nil || o.SourceCreatedAt.Get() == nil {
		var ret time.Time
		return ret
	}

	return *o.SourceCreatedAt.Get()
}

// GetSourceCreatedAtOk returns a tuple with the SourceCreatedAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetSourceCreatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return o.SourceCreatedAt.Get(), o.SourceCreatedAt.IsSet()
}

// SetSourceCreatedAt sets field value
func (o *UserFile) SetSourceCreatedAt(v time.Time) {
	o.SourceCreatedAt.Set(&v)
}

// GetGenerateSparseVectors returns the GenerateSparseVectors field value
// If the value is explicit nil, the zero value for bool will be returned
func (o *UserFile) GetGenerateSparseVectors() bool {
	if o == nil || o.GenerateSparseVectors.Get() == nil {
		var ret bool
		return ret
	}

	return *o.GenerateSparseVectors.Get()
}

// GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetGenerateSparseVectorsOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.GenerateSparseVectors.Get(), o.GenerateSparseVectors.IsSet()
}

// SetGenerateSparseVectors sets field value
func (o *UserFile) SetGenerateSparseVectors(v bool) {
	o.GenerateSparseVectors.Set(&v)
}

// GetRequestId returns the RequestId field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetRequestId() string {
	if o == nil || o.RequestId.Get() == nil {
		var ret string
		return ret
	}

	return *o.RequestId.Get()
}

// GetRequestIdOk returns a tuple with the RequestId field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetRequestIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.RequestId.Get(), o.RequestId.IsSet()
}

// SetRequestId sets field value
func (o *UserFile) SetRequestId(v string) {
	o.RequestId.Set(&v)
}

// GetUploadId returns the UploadId field value
// If the value is explicit nil, the zero value for string will be returned
func (o *UserFile) GetUploadId() string {
	if o == nil || o.UploadId.Get() == nil {
		var ret string
		return ret
	}

	return *o.UploadId.Get()
}

// GetUploadIdOk returns a tuple with the UploadId field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetUploadIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.UploadId.Get(), o.UploadId.IsSet()
}

// SetUploadId sets field value
func (o *UserFile) SetUploadId(v string) {
	o.UploadId.Set(&v)
}

// GetSyncProperties returns the SyncProperties field value
func (o *UserFile) GetSyncProperties() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.SyncProperties
}

// GetSyncPropertiesOk returns a tuple with the SyncProperties field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetSyncPropertiesOk() (map[string]interface{}, bool) {
	if o == nil {
    return map[string]interface{}{}, false
	}
	return o.SyncProperties, true
}

// SetSyncProperties sets field value
func (o *UserFile) SetSyncProperties(v map[string]interface{}) {
	o.SyncProperties = v
}

// GetMessagesMetadata returns the MessagesMetadata field value
func (o *UserFile) GetMessagesMetadata() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.MessagesMetadata
}

// GetMessagesMetadataOk returns a tuple with the MessagesMetadata field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetMessagesMetadataOk() (map[string]interface{}, bool) {
	if o == nil {
    return map[string]interface{}{}, false
	}
	return o.MessagesMetadata, true
}

// SetMessagesMetadata sets field value
func (o *UserFile) SetMessagesMetadata(v map[string]interface{}) {
	o.MessagesMetadata = v
}

// GetFileContentsDeleted returns the FileContentsDeleted field value
func (o *UserFile) GetFileContentsDeleted() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.FileContentsDeleted
}

// GetFileContentsDeletedOk returns a tuple with the FileContentsDeleted field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetFileContentsDeletedOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return &o.FileContentsDeleted, true
}

// SetFileContentsDeleted sets field value
func (o *UserFile) SetFileContentsDeleted(v bool) {
	o.FileContentsDeleted = v
}

// GetSupportsColdStorage returns the SupportsColdStorage field value
func (o *UserFile) GetSupportsColdStorage() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.SupportsColdStorage
}

// GetSupportsColdStorageOk returns a tuple with the SupportsColdStorage field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetSupportsColdStorageOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return &o.SupportsColdStorage, true
}

// SetSupportsColdStorage sets field value
func (o *UserFile) SetSupportsColdStorage(v bool) {
	o.SupportsColdStorage = v
}

// GetHotStorageTimeToLive returns the HotStorageTimeToLive field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *UserFile) GetHotStorageTimeToLive() int32 {
	if o == nil || o.HotStorageTimeToLive.Get() == nil {
		var ret int32
		return ret
	}

	return *o.HotStorageTimeToLive.Get()
}

// GetHotStorageTimeToLiveOk returns a tuple with the HotStorageTimeToLive field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserFile) GetHotStorageTimeToLiveOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.HotStorageTimeToLive.Get(), o.HotStorageTimeToLive.IsSet()
}

// SetHotStorageTimeToLive sets field value
func (o *UserFile) SetHotStorageTimeToLive(v int32) {
	o.HotStorageTimeToLive.Set(&v)
}

// GetEmbeddingStorageStatus returns the EmbeddingStorageStatus field value
func (o *UserFile) GetEmbeddingStorageStatus() EmbeddingStorageStatus {
	if o == nil {
		var ret EmbeddingStorageStatus
		return ret
	}

	return o.EmbeddingStorageStatus
}

// GetEmbeddingStorageStatusOk returns a tuple with the EmbeddingStorageStatus field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetEmbeddingStorageStatusOk() (*EmbeddingStorageStatus, bool) {
	if o == nil {
    return nil, false
	}
	return &o.EmbeddingStorageStatus, true
}

// SetEmbeddingStorageStatus sets field value
func (o *UserFile) SetEmbeddingStorageStatus(v EmbeddingStorageStatus) {
	o.EmbeddingStorageStatus = v
}

// GetCreatedAt returns the CreatedAt field value
func (o *UserFile) GetCreatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.CreatedAt
}

// GetCreatedAtOk returns a tuple with the CreatedAt field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetCreatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CreatedAt, true
}

// SetCreatedAt sets field value
func (o *UserFile) SetCreatedAt(v time.Time) {
	o.CreatedAt = v
}

// GetUpdatedAt returns the UpdatedAt field value
func (o *UserFile) GetUpdatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.UpdatedAt
}

// GetUpdatedAtOk returns a tuple with the UpdatedAt field value
// and a boolean to check if the value has been set.
func (o *UserFile) GetUpdatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UpdatedAt, true
}

// SetUpdatedAt sets field value
func (o *UserFile) SetUpdatedAt(v time.Time) {
	o.UpdatedAt = v
}

func (o UserFile) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Tags != nil {
		toSerialize["tags"] = o.Tags
	}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["source"] = o.Source
	}
	if true {
		toSerialize["organization_id"] = o.OrganizationId
	}
	if true {
		toSerialize["organization_user_id"] = o.OrganizationUserId.Get()
	}
	if true {
		toSerialize["organization_supplied_user_id"] = o.OrganizationSuppliedUserId
	}
	if true {
		toSerialize["organization_user_data_source_id"] = o.OrganizationUserDataSourceId.Get()
	}
	if true {
		toSerialize["external_file_id"] = o.ExternalFileId
	}
	if true {
		toSerialize["external_url"] = o.ExternalUrl.Get()
	}
	if true {
		toSerialize["sync_status"] = o.SyncStatus
	}
	if true {
		toSerialize["sync_error_message"] = o.SyncErrorMessage.Get()
	}
	if true {
		toSerialize["last_sync"] = o.LastSync.Get()
	}
	if true {
		toSerialize["file_statistics"] = o.FileStatistics.Get()
	}
	if o.FileMetadata != nil {
		toSerialize["file_metadata"] = o.FileMetadata
	}
	if o.EmbeddingProperties != nil {
		toSerialize["embedding_properties"] = o.EmbeddingProperties
	}
	if true {
		toSerialize["chunk_size"] = o.ChunkSize.Get()
	}
	if true {
		toSerialize["chunk_overlap"] = o.ChunkOverlap.Get()
	}
	if true {
		toSerialize["chunk_properties"] = o.ChunkProperties.Get()
	}
	if true {
		toSerialize["ocr_properties"] = o.OcrProperties
	}
	if true {
		toSerialize["ocr_job_started_at"] = o.OcrJobStartedAt.Get()
	}
	if true {
		toSerialize["name"] = o.Name.Get()
	}
	if true {
		toSerialize["parent_id"] = o.ParentId.Get()
	}
	if true {
		toSerialize["enable_auto_sync"] = o.EnableAutoSync.Get()
	}
	if true {
		toSerialize["presigned_url"] = o.PresignedUrl.Get()
	}
	if true {
		toSerialize["parsed_text_url"] = o.ParsedTextUrl.Get()
	}
	if o.AdditionalPresignedUrls != nil {
		toSerialize["additional_presigned_urls"] = o.AdditionalPresignedUrls
	}
	if true {
		toSerialize["skip_embedding_generation"] = o.SkipEmbeddingGeneration
	}
	if true {
		toSerialize["source_created_at"] = o.SourceCreatedAt.Get()
	}
	if true {
		toSerialize["generate_sparse_vectors"] = o.GenerateSparseVectors.Get()
	}
	if true {
		toSerialize["request_id"] = o.RequestId.Get()
	}
	if true {
		toSerialize["upload_id"] = o.UploadId.Get()
	}
	if true {
		toSerialize["sync_properties"] = o.SyncProperties
	}
	if true {
		toSerialize["messages_metadata"] = o.MessagesMetadata
	}
	if true {
		toSerialize["file_contents_deleted"] = o.FileContentsDeleted
	}
	if true {
		toSerialize["supports_cold_storage"] = o.SupportsColdStorage
	}
	if true {
		toSerialize["hot_storage_time_to_live"] = o.HotStorageTimeToLive.Get()
	}
	if true {
		toSerialize["embedding_storage_status"] = o.EmbeddingStorageStatus
	}
	if true {
		toSerialize["created_at"] = o.CreatedAt
	}
	if true {
		toSerialize["updated_at"] = o.UpdatedAt
	}
	return json.Marshal(toSerialize)
}

type NullableUserFile struct {
	value *UserFile
	isSet bool
}

func (v NullableUserFile) Get() *UserFile {
	return v.value
}

func (v *NullableUserFile) Set(val *UserFile) {
	v.value = val
	v.isSet = true
}

func (v NullableUserFile) IsSet() bool {
	return v.isSet
}

func (v *NullableUserFile) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUserFile(val *UserFile) *NullableUserFile {
	return &NullableUserFile{value: val, isSet: true}
}

func (v NullableUserFile) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUserFile) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


