/*
Carbon

Connect external data to LLMs, no matter the source.

API version: 1.0.0
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package carbon

import (
	"encoding/json"
)

// Document360ConnectRequest struct for Document360ConnectRequest
type Document360ConnectRequest struct {
	Tags map[string]interface{} `json:"tags,omitempty"`
	// This email will be used to identify your carbon data source. It should have access to the          Document360 account you wish to connect.
	AccountEmail string `json:"account_email"`
	AccessToken string `json:"access_token"`
	ChunkSize NullableInt32 `json:"chunk_size,omitempty"`
	ChunkOverlap NullableInt32 `json:"chunk_overlap,omitempty"`
	SkipEmbeddingGeneration NullableBool `json:"skip_embedding_generation,omitempty"`
	EmbeddingModel *EmbeddingGenerators `json:"embedding_model,omitempty"`
	GenerateSparseVectors NullableBool `json:"generate_sparse_vectors,omitempty"`
	PrependFilenameToChunks NullableBool `json:"prepend_filename_to_chunks,omitempty"`
	SyncFilesOnConnection NullableBool `json:"sync_files_on_connection,omitempty"`
	RequestId NullableString `json:"request_id,omitempty"`
	// Enabling this flag will fetch all available content from the source to be listed via list items endpoint
	SyncSourceItems *bool `json:"sync_source_items,omitempty"`
	FileSyncConfig NullableFileSyncConfigNullable `json:"file_sync_config,omitempty"`
	// Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
	DataSourceTags map[string]interface{} `json:"data_source_tags,omitempty"`
}

// NewDocument360ConnectRequest instantiates a new Document360ConnectRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDocument360ConnectRequest(accountEmail string, accessToken string) *Document360ConnectRequest {
	this := Document360ConnectRequest{}
	this.AccountEmail = accountEmail
	this.AccessToken = accessToken
	var chunkSize int32 = 1500
	this.ChunkSize = *NewNullableInt32(&chunkSize)
	var chunkOverlap int32 = 20
	this.ChunkOverlap = *NewNullableInt32(&chunkOverlap)
	var skipEmbeddingGeneration bool = false
	this.SkipEmbeddingGeneration = *NewNullableBool(&skipEmbeddingGeneration)
	var generateSparseVectors bool = false
	this.GenerateSparseVectors = *NewNullableBool(&generateSparseVectors)
	var prependFilenameToChunks bool = false
	this.PrependFilenameToChunks = *NewNullableBool(&prependFilenameToChunks)
	var syncFilesOnConnection bool = true
	this.SyncFilesOnConnection = *NewNullableBool(&syncFilesOnConnection)
	var syncSourceItems bool = true
	this.SyncSourceItems = &syncSourceItems
	return &this
}

// NewDocument360ConnectRequestWithDefaults instantiates a new Document360ConnectRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDocument360ConnectRequestWithDefaults() *Document360ConnectRequest {
	this := Document360ConnectRequest{}
	var chunkSize int32 = 1500
	this.ChunkSize = *NewNullableInt32(&chunkSize)
	var chunkOverlap int32 = 20
	this.ChunkOverlap = *NewNullableInt32(&chunkOverlap)
	var skipEmbeddingGeneration bool = false
	this.SkipEmbeddingGeneration = *NewNullableBool(&skipEmbeddingGeneration)
	var generateSparseVectors bool = false
	this.GenerateSparseVectors = *NewNullableBool(&generateSparseVectors)
	var prependFilenameToChunks bool = false
	this.PrependFilenameToChunks = *NewNullableBool(&prependFilenameToChunks)
	var syncFilesOnConnection bool = true
	this.SyncFilesOnConnection = *NewNullableBool(&syncFilesOnConnection)
	var syncSourceItems bool = true
	this.SyncSourceItems = &syncSourceItems
	return &this
}

// GetTags returns the Tags field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetTags() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}
	return o.Tags
}

// GetTagsOk returns a tuple with the Tags field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetTagsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Tags) {
    return map[string]interface{}{}, false
	}
	return o.Tags, true
}

// HasTags returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasTags() bool {
	if o != nil && isNil(o.Tags) {
		return true
	}

	return false
}

// SetTags gets a reference to the given map[string]interface{} and assigns it to the Tags field.
func (o *Document360ConnectRequest) SetTags(v map[string]interface{}) {
	o.Tags = v
}

// GetAccountEmail returns the AccountEmail field value
func (o *Document360ConnectRequest) GetAccountEmail() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccountEmail
}

// GetAccountEmailOk returns a tuple with the AccountEmail field value
// and a boolean to check if the value has been set.
func (o *Document360ConnectRequest) GetAccountEmailOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccountEmail, true
}

// SetAccountEmail sets field value
func (o *Document360ConnectRequest) SetAccountEmail(v string) {
	o.AccountEmail = v
}

// GetAccessToken returns the AccessToken field value
func (o *Document360ConnectRequest) GetAccessToken() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccessToken
}

// GetAccessTokenOk returns a tuple with the AccessToken field value
// and a boolean to check if the value has been set.
func (o *Document360ConnectRequest) GetAccessTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccessToken, true
}

// SetAccessToken sets field value
func (o *Document360ConnectRequest) SetAccessToken(v string) {
	o.AccessToken = v
}

// GetChunkSize returns the ChunkSize field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetChunkSize() int32 {
	if o == nil || isNil(o.ChunkSize.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkSize.Get()
}

// GetChunkSizeOk returns a tuple with the ChunkSize field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetChunkSizeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkSize.Get(), o.ChunkSize.IsSet()
}

// HasChunkSize returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasChunkSize() bool {
	if o != nil && o.ChunkSize.IsSet() {
		return true
	}

	return false
}

// SetChunkSize gets a reference to the given NullableInt32 and assigns it to the ChunkSize field.
func (o *Document360ConnectRequest) SetChunkSize(v int32) {
	o.ChunkSize.Set(&v)
}
// SetChunkSizeNil sets the value for ChunkSize to be an explicit nil
func (o *Document360ConnectRequest) SetChunkSizeNil() {
	o.ChunkSize.Set(nil)
}

// UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
func (o *Document360ConnectRequest) UnsetChunkSize() {
	o.ChunkSize.Unset()
}

// GetChunkOverlap returns the ChunkOverlap field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetChunkOverlap() int32 {
	if o == nil || isNil(o.ChunkOverlap.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkOverlap.Get()
}

// GetChunkOverlapOk returns a tuple with the ChunkOverlap field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetChunkOverlapOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkOverlap.Get(), o.ChunkOverlap.IsSet()
}

// HasChunkOverlap returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasChunkOverlap() bool {
	if o != nil && o.ChunkOverlap.IsSet() {
		return true
	}

	return false
}

// SetChunkOverlap gets a reference to the given NullableInt32 and assigns it to the ChunkOverlap field.
func (o *Document360ConnectRequest) SetChunkOverlap(v int32) {
	o.ChunkOverlap.Set(&v)
}
// SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil
func (o *Document360ConnectRequest) SetChunkOverlapNil() {
	o.ChunkOverlap.Set(nil)
}

// UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
func (o *Document360ConnectRequest) UnsetChunkOverlap() {
	o.ChunkOverlap.Unset()
}

// GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetSkipEmbeddingGeneration() bool {
	if o == nil || isNil(o.SkipEmbeddingGeneration.Get()) {
		var ret bool
		return ret
	}
	return *o.SkipEmbeddingGeneration.Get()
}

// GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetSkipEmbeddingGenerationOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.SkipEmbeddingGeneration.Get(), o.SkipEmbeddingGeneration.IsSet()
}

// HasSkipEmbeddingGeneration returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasSkipEmbeddingGeneration() bool {
	if o != nil && o.SkipEmbeddingGeneration.IsSet() {
		return true
	}

	return false
}

// SetSkipEmbeddingGeneration gets a reference to the given NullableBool and assigns it to the SkipEmbeddingGeneration field.
func (o *Document360ConnectRequest) SetSkipEmbeddingGeneration(v bool) {
	o.SkipEmbeddingGeneration.Set(&v)
}
// SetSkipEmbeddingGenerationNil sets the value for SkipEmbeddingGeneration to be an explicit nil
func (o *Document360ConnectRequest) SetSkipEmbeddingGenerationNil() {
	o.SkipEmbeddingGeneration.Set(nil)
}

// UnsetSkipEmbeddingGeneration ensures that no value is present for SkipEmbeddingGeneration, not even an explicit nil
func (o *Document360ConnectRequest) UnsetSkipEmbeddingGeneration() {
	o.SkipEmbeddingGeneration.Unset()
}

// GetEmbeddingModel returns the EmbeddingModel field value if set, zero value otherwise.
func (o *Document360ConnectRequest) GetEmbeddingModel() EmbeddingGenerators {
	if o == nil || isNil(o.EmbeddingModel) {
		var ret EmbeddingGenerators
		return ret
	}
	return *o.EmbeddingModel
}

// GetEmbeddingModelOk returns a tuple with the EmbeddingModel field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Document360ConnectRequest) GetEmbeddingModelOk() (*EmbeddingGenerators, bool) {
	if o == nil || isNil(o.EmbeddingModel) {
    return nil, false
	}
	return o.EmbeddingModel, true
}

// HasEmbeddingModel returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasEmbeddingModel() bool {
	if o != nil && !isNil(o.EmbeddingModel) {
		return true
	}

	return false
}

// SetEmbeddingModel gets a reference to the given EmbeddingGenerators and assigns it to the EmbeddingModel field.
func (o *Document360ConnectRequest) SetEmbeddingModel(v EmbeddingGenerators) {
	o.EmbeddingModel = &v
}

// GetGenerateSparseVectors returns the GenerateSparseVectors field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetGenerateSparseVectors() bool {
	if o == nil || isNil(o.GenerateSparseVectors.Get()) {
		var ret bool
		return ret
	}
	return *o.GenerateSparseVectors.Get()
}

// GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetGenerateSparseVectorsOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.GenerateSparseVectors.Get(), o.GenerateSparseVectors.IsSet()
}

// HasGenerateSparseVectors returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasGenerateSparseVectors() bool {
	if o != nil && o.GenerateSparseVectors.IsSet() {
		return true
	}

	return false
}

// SetGenerateSparseVectors gets a reference to the given NullableBool and assigns it to the GenerateSparseVectors field.
func (o *Document360ConnectRequest) SetGenerateSparseVectors(v bool) {
	o.GenerateSparseVectors.Set(&v)
}
// SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil
func (o *Document360ConnectRequest) SetGenerateSparseVectorsNil() {
	o.GenerateSparseVectors.Set(nil)
}

// UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
func (o *Document360ConnectRequest) UnsetGenerateSparseVectors() {
	o.GenerateSparseVectors.Unset()
}

// GetPrependFilenameToChunks returns the PrependFilenameToChunks field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetPrependFilenameToChunks() bool {
	if o == nil || isNil(o.PrependFilenameToChunks.Get()) {
		var ret bool
		return ret
	}
	return *o.PrependFilenameToChunks.Get()
}

// GetPrependFilenameToChunksOk returns a tuple with the PrependFilenameToChunks field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetPrependFilenameToChunksOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.PrependFilenameToChunks.Get(), o.PrependFilenameToChunks.IsSet()
}

// HasPrependFilenameToChunks returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasPrependFilenameToChunks() bool {
	if o != nil && o.PrependFilenameToChunks.IsSet() {
		return true
	}

	return false
}

// SetPrependFilenameToChunks gets a reference to the given NullableBool and assigns it to the PrependFilenameToChunks field.
func (o *Document360ConnectRequest) SetPrependFilenameToChunks(v bool) {
	o.PrependFilenameToChunks.Set(&v)
}
// SetPrependFilenameToChunksNil sets the value for PrependFilenameToChunks to be an explicit nil
func (o *Document360ConnectRequest) SetPrependFilenameToChunksNil() {
	o.PrependFilenameToChunks.Set(nil)
}

// UnsetPrependFilenameToChunks ensures that no value is present for PrependFilenameToChunks, not even an explicit nil
func (o *Document360ConnectRequest) UnsetPrependFilenameToChunks() {
	o.PrependFilenameToChunks.Unset()
}

// GetSyncFilesOnConnection returns the SyncFilesOnConnection field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetSyncFilesOnConnection() bool {
	if o == nil || isNil(o.SyncFilesOnConnection.Get()) {
		var ret bool
		return ret
	}
	return *o.SyncFilesOnConnection.Get()
}

// GetSyncFilesOnConnectionOk returns a tuple with the SyncFilesOnConnection field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetSyncFilesOnConnectionOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.SyncFilesOnConnection.Get(), o.SyncFilesOnConnection.IsSet()
}

// HasSyncFilesOnConnection returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasSyncFilesOnConnection() bool {
	if o != nil && o.SyncFilesOnConnection.IsSet() {
		return true
	}

	return false
}

// SetSyncFilesOnConnection gets a reference to the given NullableBool and assigns it to the SyncFilesOnConnection field.
func (o *Document360ConnectRequest) SetSyncFilesOnConnection(v bool) {
	o.SyncFilesOnConnection.Set(&v)
}
// SetSyncFilesOnConnectionNil sets the value for SyncFilesOnConnection to be an explicit nil
func (o *Document360ConnectRequest) SetSyncFilesOnConnectionNil() {
	o.SyncFilesOnConnection.Set(nil)
}

// UnsetSyncFilesOnConnection ensures that no value is present for SyncFilesOnConnection, not even an explicit nil
func (o *Document360ConnectRequest) UnsetSyncFilesOnConnection() {
	o.SyncFilesOnConnection.Unset()
}

// GetRequestId returns the RequestId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetRequestId() string {
	if o == nil || isNil(o.RequestId.Get()) {
		var ret string
		return ret
	}
	return *o.RequestId.Get()
}

// GetRequestIdOk returns a tuple with the RequestId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetRequestIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.RequestId.Get(), o.RequestId.IsSet()
}

// HasRequestId returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasRequestId() bool {
	if o != nil && o.RequestId.IsSet() {
		return true
	}

	return false
}

// SetRequestId gets a reference to the given NullableString and assigns it to the RequestId field.
func (o *Document360ConnectRequest) SetRequestId(v string) {
	o.RequestId.Set(&v)
}
// SetRequestIdNil sets the value for RequestId to be an explicit nil
func (o *Document360ConnectRequest) SetRequestIdNil() {
	o.RequestId.Set(nil)
}

// UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
func (o *Document360ConnectRequest) UnsetRequestId() {
	o.RequestId.Unset()
}

// GetSyncSourceItems returns the SyncSourceItems field value if set, zero value otherwise.
func (o *Document360ConnectRequest) GetSyncSourceItems() bool {
	if o == nil || isNil(o.SyncSourceItems) {
		var ret bool
		return ret
	}
	return *o.SyncSourceItems
}

// GetSyncSourceItemsOk returns a tuple with the SyncSourceItems field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Document360ConnectRequest) GetSyncSourceItemsOk() (*bool, bool) {
	if o == nil || isNil(o.SyncSourceItems) {
    return nil, false
	}
	return o.SyncSourceItems, true
}

// HasSyncSourceItems returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasSyncSourceItems() bool {
	if o != nil && !isNil(o.SyncSourceItems) {
		return true
	}

	return false
}

// SetSyncSourceItems gets a reference to the given bool and assigns it to the SyncSourceItems field.
func (o *Document360ConnectRequest) SetSyncSourceItems(v bool) {
	o.SyncSourceItems = &v
}

// GetFileSyncConfig returns the FileSyncConfig field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Document360ConnectRequest) GetFileSyncConfig() FileSyncConfigNullable {
	if o == nil || isNil(o.FileSyncConfig.Get()) {
		var ret FileSyncConfigNullable
		return ret
	}
	return *o.FileSyncConfig.Get()
}

// GetFileSyncConfigOk returns a tuple with the FileSyncConfig field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Document360ConnectRequest) GetFileSyncConfigOk() (*FileSyncConfigNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.FileSyncConfig.Get(), o.FileSyncConfig.IsSet()
}

// HasFileSyncConfig returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasFileSyncConfig() bool {
	if o != nil && o.FileSyncConfig.IsSet() {
		return true
	}

	return false
}

// SetFileSyncConfig gets a reference to the given NullableFileSyncConfigNullable and assigns it to the FileSyncConfig field.
func (o *Document360ConnectRequest) SetFileSyncConfig(v FileSyncConfigNullable) {
	o.FileSyncConfig.Set(&v)
}
// SetFileSyncConfigNil sets the value for FileSyncConfig to be an explicit nil
func (o *Document360ConnectRequest) SetFileSyncConfigNil() {
	o.FileSyncConfig.Set(nil)
}

// UnsetFileSyncConfig ensures that no value is present for FileSyncConfig, not even an explicit nil
func (o *Document360ConnectRequest) UnsetFileSyncConfig() {
	o.FileSyncConfig.Unset()
}

// GetDataSourceTags returns the DataSourceTags field value if set, zero value otherwise.
func (o *Document360ConnectRequest) GetDataSourceTags() map[string]interface{} {
	if o == nil || isNil(o.DataSourceTags) {
		var ret map[string]interface{}
		return ret
	}
	return o.DataSourceTags
}

// GetDataSourceTagsOk returns a tuple with the DataSourceTags field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Document360ConnectRequest) GetDataSourceTagsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.DataSourceTags) {
    return map[string]interface{}{}, false
	}
	return o.DataSourceTags, true
}

// HasDataSourceTags returns a boolean if a field has been set.
func (o *Document360ConnectRequest) HasDataSourceTags() bool {
	if o != nil && !isNil(o.DataSourceTags) {
		return true
	}

	return false
}

// SetDataSourceTags gets a reference to the given map[string]interface{} and assigns it to the DataSourceTags field.
func (o *Document360ConnectRequest) SetDataSourceTags(v map[string]interface{}) {
	o.DataSourceTags = v
}

func (o Document360ConnectRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Tags != nil {
		toSerialize["tags"] = o.Tags
	}
	if true {
		toSerialize["account_email"] = o.AccountEmail
	}
	if true {
		toSerialize["access_token"] = o.AccessToken
	}
	if o.ChunkSize.IsSet() {
		toSerialize["chunk_size"] = o.ChunkSize.Get()
	}
	if o.ChunkOverlap.IsSet() {
		toSerialize["chunk_overlap"] = o.ChunkOverlap.Get()
	}
	if o.SkipEmbeddingGeneration.IsSet() {
		toSerialize["skip_embedding_generation"] = o.SkipEmbeddingGeneration.Get()
	}
	if !isNil(o.EmbeddingModel) {
		toSerialize["embedding_model"] = o.EmbeddingModel
	}
	if o.GenerateSparseVectors.IsSet() {
		toSerialize["generate_sparse_vectors"] = o.GenerateSparseVectors.Get()
	}
	if o.PrependFilenameToChunks.IsSet() {
		toSerialize["prepend_filename_to_chunks"] = o.PrependFilenameToChunks.Get()
	}
	if o.SyncFilesOnConnection.IsSet() {
		toSerialize["sync_files_on_connection"] = o.SyncFilesOnConnection.Get()
	}
	if o.RequestId.IsSet() {
		toSerialize["request_id"] = o.RequestId.Get()
	}
	if !isNil(o.SyncSourceItems) {
		toSerialize["sync_source_items"] = o.SyncSourceItems
	}
	if o.FileSyncConfig.IsSet() {
		toSerialize["file_sync_config"] = o.FileSyncConfig.Get()
	}
	if !isNil(o.DataSourceTags) {
		toSerialize["data_source_tags"] = o.DataSourceTags
	}
	return json.Marshal(toSerialize)
}

type NullableDocument360ConnectRequest struct {
	value *Document360ConnectRequest
	isSet bool
}

func (v NullableDocument360ConnectRequest) Get() *Document360ConnectRequest {
	return v.value
}

func (v *NullableDocument360ConnectRequest) Set(val *Document360ConnectRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableDocument360ConnectRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableDocument360ConnectRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDocument360ConnectRequest(val *Document360ConnectRequest) *NullableDocument360ConnectRequest {
	return &NullableDocument360ConnectRequest{value: val, isSet: true}
}

func (v NullableDocument360ConnectRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDocument360ConnectRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


