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

// AzureBlobFileSyncInput struct for AzureBlobFileSyncInput
type AzureBlobFileSyncInput struct {
	Tags map[string]interface{} `json:"tags,omitempty"`
	Ids []AzureBlobGetFileInput `json:"ids"`
	ChunkSize NullableInt32 `json:"chunk_size,omitempty"`
	ChunkOverlap NullableInt32 `json:"chunk_overlap,omitempty"`
	SkipEmbeddingGeneration NullableBool `json:"skip_embedding_generation,omitempty"`
	EmbeddingModel *EmbeddingGenerators `json:"embedding_model,omitempty"`
	GenerateSparseVectors NullableBool `json:"generate_sparse_vectors,omitempty"`
	PrependFilenameToChunks NullableBool `json:"prepend_filename_to_chunks,omitempty"`
	// Number of objects per chunk. For csv, tsv, xlsx, and json files only.
	MaxItemsPerChunk NullableInt32 `json:"max_items_per_chunk,omitempty"`
	SetPageAsBoundary *bool `json:"set_page_as_boundary,omitempty"`
	DataSourceId NullableInt32 `json:"data_source_id,omitempty"`
	RequestId NullableString `json:"request_id,omitempty"`
	UseOcr NullableBool `json:"use_ocr,omitempty"`
	ParsePdfTablesWithOcr NullableBool `json:"parse_pdf_tables_with_ocr,omitempty"`
	FileSyncConfig NullableFileSyncConfigNullable `json:"file_sync_config,omitempty"`
}

// NewAzureBlobFileSyncInput instantiates a new AzureBlobFileSyncInput object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAzureBlobFileSyncInput(ids []AzureBlobGetFileInput) *AzureBlobFileSyncInput {
	this := AzureBlobFileSyncInput{}
	this.Ids = ids
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
	var setPageAsBoundary bool = false
	this.SetPageAsBoundary = &setPageAsBoundary
	var useOcr bool = false
	this.UseOcr = *NewNullableBool(&useOcr)
	var parsePdfTablesWithOcr bool = false
	this.ParsePdfTablesWithOcr = *NewNullableBool(&parsePdfTablesWithOcr)
	return &this
}

// NewAzureBlobFileSyncInputWithDefaults instantiates a new AzureBlobFileSyncInput object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAzureBlobFileSyncInputWithDefaults() *AzureBlobFileSyncInput {
	this := AzureBlobFileSyncInput{}
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
	var setPageAsBoundary bool = false
	this.SetPageAsBoundary = &setPageAsBoundary
	var useOcr bool = false
	this.UseOcr = *NewNullableBool(&useOcr)
	var parsePdfTablesWithOcr bool = false
	this.ParsePdfTablesWithOcr = *NewNullableBool(&parsePdfTablesWithOcr)
	return &this
}

// GetTags returns the Tags field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetTags() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}
	return o.Tags
}

// GetTagsOk returns a tuple with the Tags field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetTagsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Tags) {
    return map[string]interface{}{}, false
	}
	return o.Tags, true
}

// HasTags returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasTags() bool {
	if o != nil && isNil(o.Tags) {
		return true
	}

	return false
}

// SetTags gets a reference to the given map[string]interface{} and assigns it to the Tags field.
func (o *AzureBlobFileSyncInput) SetTags(v map[string]interface{}) {
	o.Tags = v
}

// GetIds returns the Ids field value
func (o *AzureBlobFileSyncInput) GetIds() []AzureBlobGetFileInput {
	if o == nil {
		var ret []AzureBlobGetFileInput
		return ret
	}

	return o.Ids
}

// GetIdsOk returns a tuple with the Ids field value
// and a boolean to check if the value has been set.
func (o *AzureBlobFileSyncInput) GetIdsOk() ([]AzureBlobGetFileInput, bool) {
	if o == nil {
    return nil, false
	}
	return o.Ids, true
}

// SetIds sets field value
func (o *AzureBlobFileSyncInput) SetIds(v []AzureBlobGetFileInput) {
	o.Ids = v
}

// GetChunkSize returns the ChunkSize field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetChunkSize() int32 {
	if o == nil || isNil(o.ChunkSize.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkSize.Get()
}

// GetChunkSizeOk returns a tuple with the ChunkSize field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetChunkSizeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkSize.Get(), o.ChunkSize.IsSet()
}

// HasChunkSize returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasChunkSize() bool {
	if o != nil && o.ChunkSize.IsSet() {
		return true
	}

	return false
}

// SetChunkSize gets a reference to the given NullableInt32 and assigns it to the ChunkSize field.
func (o *AzureBlobFileSyncInput) SetChunkSize(v int32) {
	o.ChunkSize.Set(&v)
}
// SetChunkSizeNil sets the value for ChunkSize to be an explicit nil
func (o *AzureBlobFileSyncInput) SetChunkSizeNil() {
	o.ChunkSize.Set(nil)
}

// UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetChunkSize() {
	o.ChunkSize.Unset()
}

// GetChunkOverlap returns the ChunkOverlap field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetChunkOverlap() int32 {
	if o == nil || isNil(o.ChunkOverlap.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkOverlap.Get()
}

// GetChunkOverlapOk returns a tuple with the ChunkOverlap field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetChunkOverlapOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkOverlap.Get(), o.ChunkOverlap.IsSet()
}

// HasChunkOverlap returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasChunkOverlap() bool {
	if o != nil && o.ChunkOverlap.IsSet() {
		return true
	}

	return false
}

// SetChunkOverlap gets a reference to the given NullableInt32 and assigns it to the ChunkOverlap field.
func (o *AzureBlobFileSyncInput) SetChunkOverlap(v int32) {
	o.ChunkOverlap.Set(&v)
}
// SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil
func (o *AzureBlobFileSyncInput) SetChunkOverlapNil() {
	o.ChunkOverlap.Set(nil)
}

// UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetChunkOverlap() {
	o.ChunkOverlap.Unset()
}

// GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetSkipEmbeddingGeneration() bool {
	if o == nil || isNil(o.SkipEmbeddingGeneration.Get()) {
		var ret bool
		return ret
	}
	return *o.SkipEmbeddingGeneration.Get()
}

// GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetSkipEmbeddingGenerationOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.SkipEmbeddingGeneration.Get(), o.SkipEmbeddingGeneration.IsSet()
}

// HasSkipEmbeddingGeneration returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasSkipEmbeddingGeneration() bool {
	if o != nil && o.SkipEmbeddingGeneration.IsSet() {
		return true
	}

	return false
}

// SetSkipEmbeddingGeneration gets a reference to the given NullableBool and assigns it to the SkipEmbeddingGeneration field.
func (o *AzureBlobFileSyncInput) SetSkipEmbeddingGeneration(v bool) {
	o.SkipEmbeddingGeneration.Set(&v)
}
// SetSkipEmbeddingGenerationNil sets the value for SkipEmbeddingGeneration to be an explicit nil
func (o *AzureBlobFileSyncInput) SetSkipEmbeddingGenerationNil() {
	o.SkipEmbeddingGeneration.Set(nil)
}

// UnsetSkipEmbeddingGeneration ensures that no value is present for SkipEmbeddingGeneration, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetSkipEmbeddingGeneration() {
	o.SkipEmbeddingGeneration.Unset()
}

// GetEmbeddingModel returns the EmbeddingModel field value if set, zero value otherwise.
func (o *AzureBlobFileSyncInput) GetEmbeddingModel() EmbeddingGenerators {
	if o == nil || isNil(o.EmbeddingModel) {
		var ret EmbeddingGenerators
		return ret
	}
	return *o.EmbeddingModel
}

// GetEmbeddingModelOk returns a tuple with the EmbeddingModel field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AzureBlobFileSyncInput) GetEmbeddingModelOk() (*EmbeddingGenerators, bool) {
	if o == nil || isNil(o.EmbeddingModel) {
    return nil, false
	}
	return o.EmbeddingModel, true
}

// HasEmbeddingModel returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasEmbeddingModel() bool {
	if o != nil && !isNil(o.EmbeddingModel) {
		return true
	}

	return false
}

// SetEmbeddingModel gets a reference to the given EmbeddingGenerators and assigns it to the EmbeddingModel field.
func (o *AzureBlobFileSyncInput) SetEmbeddingModel(v EmbeddingGenerators) {
	o.EmbeddingModel = &v
}

// GetGenerateSparseVectors returns the GenerateSparseVectors field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetGenerateSparseVectors() bool {
	if o == nil || isNil(o.GenerateSparseVectors.Get()) {
		var ret bool
		return ret
	}
	return *o.GenerateSparseVectors.Get()
}

// GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetGenerateSparseVectorsOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.GenerateSparseVectors.Get(), o.GenerateSparseVectors.IsSet()
}

// HasGenerateSparseVectors returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasGenerateSparseVectors() bool {
	if o != nil && o.GenerateSparseVectors.IsSet() {
		return true
	}

	return false
}

// SetGenerateSparseVectors gets a reference to the given NullableBool and assigns it to the GenerateSparseVectors field.
func (o *AzureBlobFileSyncInput) SetGenerateSparseVectors(v bool) {
	o.GenerateSparseVectors.Set(&v)
}
// SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil
func (o *AzureBlobFileSyncInput) SetGenerateSparseVectorsNil() {
	o.GenerateSparseVectors.Set(nil)
}

// UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetGenerateSparseVectors() {
	o.GenerateSparseVectors.Unset()
}

// GetPrependFilenameToChunks returns the PrependFilenameToChunks field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetPrependFilenameToChunks() bool {
	if o == nil || isNil(o.PrependFilenameToChunks.Get()) {
		var ret bool
		return ret
	}
	return *o.PrependFilenameToChunks.Get()
}

// GetPrependFilenameToChunksOk returns a tuple with the PrependFilenameToChunks field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetPrependFilenameToChunksOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.PrependFilenameToChunks.Get(), o.PrependFilenameToChunks.IsSet()
}

// HasPrependFilenameToChunks returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasPrependFilenameToChunks() bool {
	if o != nil && o.PrependFilenameToChunks.IsSet() {
		return true
	}

	return false
}

// SetPrependFilenameToChunks gets a reference to the given NullableBool and assigns it to the PrependFilenameToChunks field.
func (o *AzureBlobFileSyncInput) SetPrependFilenameToChunks(v bool) {
	o.PrependFilenameToChunks.Set(&v)
}
// SetPrependFilenameToChunksNil sets the value for PrependFilenameToChunks to be an explicit nil
func (o *AzureBlobFileSyncInput) SetPrependFilenameToChunksNil() {
	o.PrependFilenameToChunks.Set(nil)
}

// UnsetPrependFilenameToChunks ensures that no value is present for PrependFilenameToChunks, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetPrependFilenameToChunks() {
	o.PrependFilenameToChunks.Unset()
}

// GetMaxItemsPerChunk returns the MaxItemsPerChunk field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetMaxItemsPerChunk() int32 {
	if o == nil || isNil(o.MaxItemsPerChunk.Get()) {
		var ret int32
		return ret
	}
	return *o.MaxItemsPerChunk.Get()
}

// GetMaxItemsPerChunkOk returns a tuple with the MaxItemsPerChunk field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetMaxItemsPerChunkOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.MaxItemsPerChunk.Get(), o.MaxItemsPerChunk.IsSet()
}

// HasMaxItemsPerChunk returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasMaxItemsPerChunk() bool {
	if o != nil && o.MaxItemsPerChunk.IsSet() {
		return true
	}

	return false
}

// SetMaxItemsPerChunk gets a reference to the given NullableInt32 and assigns it to the MaxItemsPerChunk field.
func (o *AzureBlobFileSyncInput) SetMaxItemsPerChunk(v int32) {
	o.MaxItemsPerChunk.Set(&v)
}
// SetMaxItemsPerChunkNil sets the value for MaxItemsPerChunk to be an explicit nil
func (o *AzureBlobFileSyncInput) SetMaxItemsPerChunkNil() {
	o.MaxItemsPerChunk.Set(nil)
}

// UnsetMaxItemsPerChunk ensures that no value is present for MaxItemsPerChunk, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetMaxItemsPerChunk() {
	o.MaxItemsPerChunk.Unset()
}

// GetSetPageAsBoundary returns the SetPageAsBoundary field value if set, zero value otherwise.
func (o *AzureBlobFileSyncInput) GetSetPageAsBoundary() bool {
	if o == nil || isNil(o.SetPageAsBoundary) {
		var ret bool
		return ret
	}
	return *o.SetPageAsBoundary
}

// GetSetPageAsBoundaryOk returns a tuple with the SetPageAsBoundary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AzureBlobFileSyncInput) GetSetPageAsBoundaryOk() (*bool, bool) {
	if o == nil || isNil(o.SetPageAsBoundary) {
    return nil, false
	}
	return o.SetPageAsBoundary, true
}

// HasSetPageAsBoundary returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasSetPageAsBoundary() bool {
	if o != nil && !isNil(o.SetPageAsBoundary) {
		return true
	}

	return false
}

// SetSetPageAsBoundary gets a reference to the given bool and assigns it to the SetPageAsBoundary field.
func (o *AzureBlobFileSyncInput) SetSetPageAsBoundary(v bool) {
	o.SetPageAsBoundary = &v
}

// GetDataSourceId returns the DataSourceId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetDataSourceId() int32 {
	if o == nil || isNil(o.DataSourceId.Get()) {
		var ret int32
		return ret
	}
	return *o.DataSourceId.Get()
}

// GetDataSourceIdOk returns a tuple with the DataSourceId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetDataSourceIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.DataSourceId.Get(), o.DataSourceId.IsSet()
}

// HasDataSourceId returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasDataSourceId() bool {
	if o != nil && o.DataSourceId.IsSet() {
		return true
	}

	return false
}

// SetDataSourceId gets a reference to the given NullableInt32 and assigns it to the DataSourceId field.
func (o *AzureBlobFileSyncInput) SetDataSourceId(v int32) {
	o.DataSourceId.Set(&v)
}
// SetDataSourceIdNil sets the value for DataSourceId to be an explicit nil
func (o *AzureBlobFileSyncInput) SetDataSourceIdNil() {
	o.DataSourceId.Set(nil)
}

// UnsetDataSourceId ensures that no value is present for DataSourceId, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetDataSourceId() {
	o.DataSourceId.Unset()
}

// GetRequestId returns the RequestId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetRequestId() string {
	if o == nil || isNil(o.RequestId.Get()) {
		var ret string
		return ret
	}
	return *o.RequestId.Get()
}

// GetRequestIdOk returns a tuple with the RequestId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetRequestIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.RequestId.Get(), o.RequestId.IsSet()
}

// HasRequestId returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasRequestId() bool {
	if o != nil && o.RequestId.IsSet() {
		return true
	}

	return false
}

// SetRequestId gets a reference to the given NullableString and assigns it to the RequestId field.
func (o *AzureBlobFileSyncInput) SetRequestId(v string) {
	o.RequestId.Set(&v)
}
// SetRequestIdNil sets the value for RequestId to be an explicit nil
func (o *AzureBlobFileSyncInput) SetRequestIdNil() {
	o.RequestId.Set(nil)
}

// UnsetRequestId ensures that no value is present for RequestId, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetRequestId() {
	o.RequestId.Unset()
}

// GetUseOcr returns the UseOcr field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetUseOcr() bool {
	if o == nil || isNil(o.UseOcr.Get()) {
		var ret bool
		return ret
	}
	return *o.UseOcr.Get()
}

// GetUseOcrOk returns a tuple with the UseOcr field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetUseOcrOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.UseOcr.Get(), o.UseOcr.IsSet()
}

// HasUseOcr returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasUseOcr() bool {
	if o != nil && o.UseOcr.IsSet() {
		return true
	}

	return false
}

// SetUseOcr gets a reference to the given NullableBool and assigns it to the UseOcr field.
func (o *AzureBlobFileSyncInput) SetUseOcr(v bool) {
	o.UseOcr.Set(&v)
}
// SetUseOcrNil sets the value for UseOcr to be an explicit nil
func (o *AzureBlobFileSyncInput) SetUseOcrNil() {
	o.UseOcr.Set(nil)
}

// UnsetUseOcr ensures that no value is present for UseOcr, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetUseOcr() {
	o.UseOcr.Unset()
}

// GetParsePdfTablesWithOcr returns the ParsePdfTablesWithOcr field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetParsePdfTablesWithOcr() bool {
	if o == nil || isNil(o.ParsePdfTablesWithOcr.Get()) {
		var ret bool
		return ret
	}
	return *o.ParsePdfTablesWithOcr.Get()
}

// GetParsePdfTablesWithOcrOk returns a tuple with the ParsePdfTablesWithOcr field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetParsePdfTablesWithOcrOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.ParsePdfTablesWithOcr.Get(), o.ParsePdfTablesWithOcr.IsSet()
}

// HasParsePdfTablesWithOcr returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasParsePdfTablesWithOcr() bool {
	if o != nil && o.ParsePdfTablesWithOcr.IsSet() {
		return true
	}

	return false
}

// SetParsePdfTablesWithOcr gets a reference to the given NullableBool and assigns it to the ParsePdfTablesWithOcr field.
func (o *AzureBlobFileSyncInput) SetParsePdfTablesWithOcr(v bool) {
	o.ParsePdfTablesWithOcr.Set(&v)
}
// SetParsePdfTablesWithOcrNil sets the value for ParsePdfTablesWithOcr to be an explicit nil
func (o *AzureBlobFileSyncInput) SetParsePdfTablesWithOcrNil() {
	o.ParsePdfTablesWithOcr.Set(nil)
}

// UnsetParsePdfTablesWithOcr ensures that no value is present for ParsePdfTablesWithOcr, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetParsePdfTablesWithOcr() {
	o.ParsePdfTablesWithOcr.Unset()
}

// GetFileSyncConfig returns the FileSyncConfig field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AzureBlobFileSyncInput) GetFileSyncConfig() FileSyncConfigNullable {
	if o == nil || isNil(o.FileSyncConfig.Get()) {
		var ret FileSyncConfigNullable
		return ret
	}
	return *o.FileSyncConfig.Get()
}

// GetFileSyncConfigOk returns a tuple with the FileSyncConfig field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AzureBlobFileSyncInput) GetFileSyncConfigOk() (*FileSyncConfigNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.FileSyncConfig.Get(), o.FileSyncConfig.IsSet()
}

// HasFileSyncConfig returns a boolean if a field has been set.
func (o *AzureBlobFileSyncInput) HasFileSyncConfig() bool {
	if o != nil && o.FileSyncConfig.IsSet() {
		return true
	}

	return false
}

// SetFileSyncConfig gets a reference to the given NullableFileSyncConfigNullable and assigns it to the FileSyncConfig field.
func (o *AzureBlobFileSyncInput) SetFileSyncConfig(v FileSyncConfigNullable) {
	o.FileSyncConfig.Set(&v)
}
// SetFileSyncConfigNil sets the value for FileSyncConfig to be an explicit nil
func (o *AzureBlobFileSyncInput) SetFileSyncConfigNil() {
	o.FileSyncConfig.Set(nil)
}

// UnsetFileSyncConfig ensures that no value is present for FileSyncConfig, not even an explicit nil
func (o *AzureBlobFileSyncInput) UnsetFileSyncConfig() {
	o.FileSyncConfig.Unset()
}

func (o AzureBlobFileSyncInput) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Tags != nil {
		toSerialize["tags"] = o.Tags
	}
	if true {
		toSerialize["ids"] = o.Ids
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
	if o.MaxItemsPerChunk.IsSet() {
		toSerialize["max_items_per_chunk"] = o.MaxItemsPerChunk.Get()
	}
	if !isNil(o.SetPageAsBoundary) {
		toSerialize["set_page_as_boundary"] = o.SetPageAsBoundary
	}
	if o.DataSourceId.IsSet() {
		toSerialize["data_source_id"] = o.DataSourceId.Get()
	}
	if o.RequestId.IsSet() {
		toSerialize["request_id"] = o.RequestId.Get()
	}
	if o.UseOcr.IsSet() {
		toSerialize["use_ocr"] = o.UseOcr.Get()
	}
	if o.ParsePdfTablesWithOcr.IsSet() {
		toSerialize["parse_pdf_tables_with_ocr"] = o.ParsePdfTablesWithOcr.Get()
	}
	if o.FileSyncConfig.IsSet() {
		toSerialize["file_sync_config"] = o.FileSyncConfig.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableAzureBlobFileSyncInput struct {
	value *AzureBlobFileSyncInput
	isSet bool
}

func (v NullableAzureBlobFileSyncInput) Get() *AzureBlobFileSyncInput {
	return v.value
}

func (v *NullableAzureBlobFileSyncInput) Set(val *AzureBlobFileSyncInput) {
	v.value = val
	v.isSet = true
}

func (v NullableAzureBlobFileSyncInput) IsSet() bool {
	return v.isSet
}

func (v *NullableAzureBlobFileSyncInput) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAzureBlobFileSyncInput(val *AzureBlobFileSyncInput) *NullableAzureBlobFileSyncInput {
	return &NullableAzureBlobFileSyncInput{value: val, isSet: true}
}

func (v NullableAzureBlobFileSyncInput) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAzureBlobFileSyncInput) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


