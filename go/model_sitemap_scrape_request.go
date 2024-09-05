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

// SitemapScrapeRequest struct for SitemapScrapeRequest
type SitemapScrapeRequest struct {
	Tags map[string]Tags1 `json:"tags,omitempty"`
	Url string `json:"url"`
	MaxPagesToScrape NullableInt32 `json:"max_pages_to_scrape,omitempty"`
	ChunkSize NullableInt32 `json:"chunk_size,omitempty"`
	ChunkOverlap NullableInt32 `json:"chunk_overlap,omitempty"`
	SkipEmbeddingGeneration NullableBool `json:"skip_embedding_generation,omitempty"`
	EnableAutoSync NullableBool `json:"enable_auto_sync,omitempty"`
	GenerateSparseVectors NullableBool `json:"generate_sparse_vectors,omitempty"`
	PrependFilenameToChunks NullableBool `json:"prepend_filename_to_chunks,omitempty"`
	HtmlTagsToSkip []string `json:"html_tags_to_skip,omitempty"`
	CssClassesToSkip []string `json:"css_classes_to_skip,omitempty"`
	CssSelectorsToSkip []string `json:"css_selectors_to_skip,omitempty"`
	EmbeddingModel *EmbeddingGenerators `json:"embedding_model,omitempty"`
	// URL subpaths or directories that you want to include. For example if you want to only include         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input
	UrlPathsToInclude []string `json:"url_paths_to_include,omitempty"`
	// URL subpaths or directories that you want to exclude. For example if you want to exclude         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input
	UrlPathsToExclude []string `json:"url_paths_to_exclude,omitempty"`
	// You can submit a subset of URLs from the sitemap that should be scraped. To get the list of URLs,           you can check out /process_sitemap endpoint. If left empty, all URLs from the sitemap will be scraped.
	UrlsToScrape []string `json:"urls_to_scrape,omitempty"`
	// Whether the scraper should download css and media from the page (images, fonts, etc). Scrapes          might take longer to finish with this flag enabled, but the success rate is improved.
	DownloadCssAndMedia NullableBool `json:"download_css_and_media,omitempty"`
	// If this flag is enabled, the file will be chunked and stored with Carbon,           but no embeddings will be generated. This overrides the skip_embedding_generation flag.
	GenerateChunksOnly *bool `json:"generate_chunks_only,omitempty"`
}

// NewSitemapScrapeRequest instantiates a new SitemapScrapeRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSitemapScrapeRequest(url string) *SitemapScrapeRequest {
	this := SitemapScrapeRequest{}
	this.Url = url
	var chunkSize int32 = 1500
	this.ChunkSize = *NewNullableInt32(&chunkSize)
	var chunkOverlap int32 = 20
	this.ChunkOverlap = *NewNullableInt32(&chunkOverlap)
	var skipEmbeddingGeneration bool = false
	this.SkipEmbeddingGeneration = *NewNullableBool(&skipEmbeddingGeneration)
	var enableAutoSync bool = false
	this.EnableAutoSync = *NewNullableBool(&enableAutoSync)
	var generateSparseVectors bool = false
	this.GenerateSparseVectors = *NewNullableBool(&generateSparseVectors)
	var prependFilenameToChunks bool = false
	this.PrependFilenameToChunks = *NewNullableBool(&prependFilenameToChunks)
	var downloadCssAndMedia bool = false
	this.DownloadCssAndMedia = *NewNullableBool(&downloadCssAndMedia)
	var generateChunksOnly bool = false
	this.GenerateChunksOnly = &generateChunksOnly
	return &this
}

// NewSitemapScrapeRequestWithDefaults instantiates a new SitemapScrapeRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSitemapScrapeRequestWithDefaults() *SitemapScrapeRequest {
	this := SitemapScrapeRequest{}
	var chunkSize int32 = 1500
	this.ChunkSize = *NewNullableInt32(&chunkSize)
	var chunkOverlap int32 = 20
	this.ChunkOverlap = *NewNullableInt32(&chunkOverlap)
	var skipEmbeddingGeneration bool = false
	this.SkipEmbeddingGeneration = *NewNullableBool(&skipEmbeddingGeneration)
	var enableAutoSync bool = false
	this.EnableAutoSync = *NewNullableBool(&enableAutoSync)
	var generateSparseVectors bool = false
	this.GenerateSparseVectors = *NewNullableBool(&generateSparseVectors)
	var prependFilenameToChunks bool = false
	this.PrependFilenameToChunks = *NewNullableBool(&prependFilenameToChunks)
	var downloadCssAndMedia bool = false
	this.DownloadCssAndMedia = *NewNullableBool(&downloadCssAndMedia)
	var generateChunksOnly bool = false
	this.GenerateChunksOnly = &generateChunksOnly
	return &this
}

// GetTags returns the Tags field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetTags() map[string]Tags1 {
	if o == nil {
		var ret map[string]Tags1
		return ret
	}
	return o.Tags
}

// GetTagsOk returns a tuple with the Tags field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetTagsOk() (*map[string]Tags1, bool) {
	if o == nil || isNil(o.Tags) {
    return nil, false
	}
	return &o.Tags, true
}

// HasTags returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasTags() bool {
	if o != nil && isNil(o.Tags) {
		return true
	}

	return false
}

// SetTags gets a reference to the given map[string]Tags1 and assigns it to the Tags field.
func (o *SitemapScrapeRequest) SetTags(v map[string]Tags1) {
	o.Tags = v
}

// GetUrl returns the Url field value
func (o *SitemapScrapeRequest) GetUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Url
}

// GetUrlOk returns a tuple with the Url field value
// and a boolean to check if the value has been set.
func (o *SitemapScrapeRequest) GetUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Url, true
}

// SetUrl sets field value
func (o *SitemapScrapeRequest) SetUrl(v string) {
	o.Url = v
}

// GetMaxPagesToScrape returns the MaxPagesToScrape field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetMaxPagesToScrape() int32 {
	if o == nil || isNil(o.MaxPagesToScrape.Get()) {
		var ret int32
		return ret
	}
	return *o.MaxPagesToScrape.Get()
}

// GetMaxPagesToScrapeOk returns a tuple with the MaxPagesToScrape field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetMaxPagesToScrapeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.MaxPagesToScrape.Get(), o.MaxPagesToScrape.IsSet()
}

// HasMaxPagesToScrape returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasMaxPagesToScrape() bool {
	if o != nil && o.MaxPagesToScrape.IsSet() {
		return true
	}

	return false
}

// SetMaxPagesToScrape gets a reference to the given NullableInt32 and assigns it to the MaxPagesToScrape field.
func (o *SitemapScrapeRequest) SetMaxPagesToScrape(v int32) {
	o.MaxPagesToScrape.Set(&v)
}
// SetMaxPagesToScrapeNil sets the value for MaxPagesToScrape to be an explicit nil
func (o *SitemapScrapeRequest) SetMaxPagesToScrapeNil() {
	o.MaxPagesToScrape.Set(nil)
}

// UnsetMaxPagesToScrape ensures that no value is present for MaxPagesToScrape, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetMaxPagesToScrape() {
	o.MaxPagesToScrape.Unset()
}

// GetChunkSize returns the ChunkSize field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetChunkSize() int32 {
	if o == nil || isNil(o.ChunkSize.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkSize.Get()
}

// GetChunkSizeOk returns a tuple with the ChunkSize field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetChunkSizeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkSize.Get(), o.ChunkSize.IsSet()
}

// HasChunkSize returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasChunkSize() bool {
	if o != nil && o.ChunkSize.IsSet() {
		return true
	}

	return false
}

// SetChunkSize gets a reference to the given NullableInt32 and assigns it to the ChunkSize field.
func (o *SitemapScrapeRequest) SetChunkSize(v int32) {
	o.ChunkSize.Set(&v)
}
// SetChunkSizeNil sets the value for ChunkSize to be an explicit nil
func (o *SitemapScrapeRequest) SetChunkSizeNil() {
	o.ChunkSize.Set(nil)
}

// UnsetChunkSize ensures that no value is present for ChunkSize, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetChunkSize() {
	o.ChunkSize.Unset()
}

// GetChunkOverlap returns the ChunkOverlap field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetChunkOverlap() int32 {
	if o == nil || isNil(o.ChunkOverlap.Get()) {
		var ret int32
		return ret
	}
	return *o.ChunkOverlap.Get()
}

// GetChunkOverlapOk returns a tuple with the ChunkOverlap field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetChunkOverlapOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ChunkOverlap.Get(), o.ChunkOverlap.IsSet()
}

// HasChunkOverlap returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasChunkOverlap() bool {
	if o != nil && o.ChunkOverlap.IsSet() {
		return true
	}

	return false
}

// SetChunkOverlap gets a reference to the given NullableInt32 and assigns it to the ChunkOverlap field.
func (o *SitemapScrapeRequest) SetChunkOverlap(v int32) {
	o.ChunkOverlap.Set(&v)
}
// SetChunkOverlapNil sets the value for ChunkOverlap to be an explicit nil
func (o *SitemapScrapeRequest) SetChunkOverlapNil() {
	o.ChunkOverlap.Set(nil)
}

// UnsetChunkOverlap ensures that no value is present for ChunkOverlap, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetChunkOverlap() {
	o.ChunkOverlap.Unset()
}

// GetSkipEmbeddingGeneration returns the SkipEmbeddingGeneration field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetSkipEmbeddingGeneration() bool {
	if o == nil || isNil(o.SkipEmbeddingGeneration.Get()) {
		var ret bool
		return ret
	}
	return *o.SkipEmbeddingGeneration.Get()
}

// GetSkipEmbeddingGenerationOk returns a tuple with the SkipEmbeddingGeneration field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetSkipEmbeddingGenerationOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.SkipEmbeddingGeneration.Get(), o.SkipEmbeddingGeneration.IsSet()
}

// HasSkipEmbeddingGeneration returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasSkipEmbeddingGeneration() bool {
	if o != nil && o.SkipEmbeddingGeneration.IsSet() {
		return true
	}

	return false
}

// SetSkipEmbeddingGeneration gets a reference to the given NullableBool and assigns it to the SkipEmbeddingGeneration field.
func (o *SitemapScrapeRequest) SetSkipEmbeddingGeneration(v bool) {
	o.SkipEmbeddingGeneration.Set(&v)
}
// SetSkipEmbeddingGenerationNil sets the value for SkipEmbeddingGeneration to be an explicit nil
func (o *SitemapScrapeRequest) SetSkipEmbeddingGenerationNil() {
	o.SkipEmbeddingGeneration.Set(nil)
}

// UnsetSkipEmbeddingGeneration ensures that no value is present for SkipEmbeddingGeneration, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetSkipEmbeddingGeneration() {
	o.SkipEmbeddingGeneration.Unset()
}

// GetEnableAutoSync returns the EnableAutoSync field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetEnableAutoSync() bool {
	if o == nil || isNil(o.EnableAutoSync.Get()) {
		var ret bool
		return ret
	}
	return *o.EnableAutoSync.Get()
}

// GetEnableAutoSyncOk returns a tuple with the EnableAutoSync field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetEnableAutoSyncOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.EnableAutoSync.Get(), o.EnableAutoSync.IsSet()
}

// HasEnableAutoSync returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasEnableAutoSync() bool {
	if o != nil && o.EnableAutoSync.IsSet() {
		return true
	}

	return false
}

// SetEnableAutoSync gets a reference to the given NullableBool and assigns it to the EnableAutoSync field.
func (o *SitemapScrapeRequest) SetEnableAutoSync(v bool) {
	o.EnableAutoSync.Set(&v)
}
// SetEnableAutoSyncNil sets the value for EnableAutoSync to be an explicit nil
func (o *SitemapScrapeRequest) SetEnableAutoSyncNil() {
	o.EnableAutoSync.Set(nil)
}

// UnsetEnableAutoSync ensures that no value is present for EnableAutoSync, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetEnableAutoSync() {
	o.EnableAutoSync.Unset()
}

// GetGenerateSparseVectors returns the GenerateSparseVectors field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetGenerateSparseVectors() bool {
	if o == nil || isNil(o.GenerateSparseVectors.Get()) {
		var ret bool
		return ret
	}
	return *o.GenerateSparseVectors.Get()
}

// GetGenerateSparseVectorsOk returns a tuple with the GenerateSparseVectors field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetGenerateSparseVectorsOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.GenerateSparseVectors.Get(), o.GenerateSparseVectors.IsSet()
}

// HasGenerateSparseVectors returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasGenerateSparseVectors() bool {
	if o != nil && o.GenerateSparseVectors.IsSet() {
		return true
	}

	return false
}

// SetGenerateSparseVectors gets a reference to the given NullableBool and assigns it to the GenerateSparseVectors field.
func (o *SitemapScrapeRequest) SetGenerateSparseVectors(v bool) {
	o.GenerateSparseVectors.Set(&v)
}
// SetGenerateSparseVectorsNil sets the value for GenerateSparseVectors to be an explicit nil
func (o *SitemapScrapeRequest) SetGenerateSparseVectorsNil() {
	o.GenerateSparseVectors.Set(nil)
}

// UnsetGenerateSparseVectors ensures that no value is present for GenerateSparseVectors, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetGenerateSparseVectors() {
	o.GenerateSparseVectors.Unset()
}

// GetPrependFilenameToChunks returns the PrependFilenameToChunks field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetPrependFilenameToChunks() bool {
	if o == nil || isNil(o.PrependFilenameToChunks.Get()) {
		var ret bool
		return ret
	}
	return *o.PrependFilenameToChunks.Get()
}

// GetPrependFilenameToChunksOk returns a tuple with the PrependFilenameToChunks field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetPrependFilenameToChunksOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.PrependFilenameToChunks.Get(), o.PrependFilenameToChunks.IsSet()
}

// HasPrependFilenameToChunks returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasPrependFilenameToChunks() bool {
	if o != nil && o.PrependFilenameToChunks.IsSet() {
		return true
	}

	return false
}

// SetPrependFilenameToChunks gets a reference to the given NullableBool and assigns it to the PrependFilenameToChunks field.
func (o *SitemapScrapeRequest) SetPrependFilenameToChunks(v bool) {
	o.PrependFilenameToChunks.Set(&v)
}
// SetPrependFilenameToChunksNil sets the value for PrependFilenameToChunks to be an explicit nil
func (o *SitemapScrapeRequest) SetPrependFilenameToChunksNil() {
	o.PrependFilenameToChunks.Set(nil)
}

// UnsetPrependFilenameToChunks ensures that no value is present for PrependFilenameToChunks, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetPrependFilenameToChunks() {
	o.PrependFilenameToChunks.Unset()
}

// GetHtmlTagsToSkip returns the HtmlTagsToSkip field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetHtmlTagsToSkip() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.HtmlTagsToSkip
}

// GetHtmlTagsToSkipOk returns a tuple with the HtmlTagsToSkip field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetHtmlTagsToSkipOk() ([]string, bool) {
	if o == nil || isNil(o.HtmlTagsToSkip) {
    return nil, false
	}
	return o.HtmlTagsToSkip, true
}

// HasHtmlTagsToSkip returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasHtmlTagsToSkip() bool {
	if o != nil && isNil(o.HtmlTagsToSkip) {
		return true
	}

	return false
}

// SetHtmlTagsToSkip gets a reference to the given []string and assigns it to the HtmlTagsToSkip field.
func (o *SitemapScrapeRequest) SetHtmlTagsToSkip(v []string) {
	o.HtmlTagsToSkip = v
}

// GetCssClassesToSkip returns the CssClassesToSkip field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetCssClassesToSkip() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.CssClassesToSkip
}

// GetCssClassesToSkipOk returns a tuple with the CssClassesToSkip field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetCssClassesToSkipOk() ([]string, bool) {
	if o == nil || isNil(o.CssClassesToSkip) {
    return nil, false
	}
	return o.CssClassesToSkip, true
}

// HasCssClassesToSkip returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasCssClassesToSkip() bool {
	if o != nil && isNil(o.CssClassesToSkip) {
		return true
	}

	return false
}

// SetCssClassesToSkip gets a reference to the given []string and assigns it to the CssClassesToSkip field.
func (o *SitemapScrapeRequest) SetCssClassesToSkip(v []string) {
	o.CssClassesToSkip = v
}

// GetCssSelectorsToSkip returns the CssSelectorsToSkip field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetCssSelectorsToSkip() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.CssSelectorsToSkip
}

// GetCssSelectorsToSkipOk returns a tuple with the CssSelectorsToSkip field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetCssSelectorsToSkipOk() ([]string, bool) {
	if o == nil || isNil(o.CssSelectorsToSkip) {
    return nil, false
	}
	return o.CssSelectorsToSkip, true
}

// HasCssSelectorsToSkip returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasCssSelectorsToSkip() bool {
	if o != nil && isNil(o.CssSelectorsToSkip) {
		return true
	}

	return false
}

// SetCssSelectorsToSkip gets a reference to the given []string and assigns it to the CssSelectorsToSkip field.
func (o *SitemapScrapeRequest) SetCssSelectorsToSkip(v []string) {
	o.CssSelectorsToSkip = v
}

// GetEmbeddingModel returns the EmbeddingModel field value if set, zero value otherwise.
func (o *SitemapScrapeRequest) GetEmbeddingModel() EmbeddingGenerators {
	if o == nil || isNil(o.EmbeddingModel) {
		var ret EmbeddingGenerators
		return ret
	}
	return *o.EmbeddingModel
}

// GetEmbeddingModelOk returns a tuple with the EmbeddingModel field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SitemapScrapeRequest) GetEmbeddingModelOk() (*EmbeddingGenerators, bool) {
	if o == nil || isNil(o.EmbeddingModel) {
    return nil, false
	}
	return o.EmbeddingModel, true
}

// HasEmbeddingModel returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasEmbeddingModel() bool {
	if o != nil && !isNil(o.EmbeddingModel) {
		return true
	}

	return false
}

// SetEmbeddingModel gets a reference to the given EmbeddingGenerators and assigns it to the EmbeddingModel field.
func (o *SitemapScrapeRequest) SetEmbeddingModel(v EmbeddingGenerators) {
	o.EmbeddingModel = &v
}

// GetUrlPathsToInclude returns the UrlPathsToInclude field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetUrlPathsToInclude() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.UrlPathsToInclude
}

// GetUrlPathsToIncludeOk returns a tuple with the UrlPathsToInclude field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetUrlPathsToIncludeOk() ([]string, bool) {
	if o == nil || isNil(o.UrlPathsToInclude) {
    return nil, false
	}
	return o.UrlPathsToInclude, true
}

// HasUrlPathsToInclude returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasUrlPathsToInclude() bool {
	if o != nil && isNil(o.UrlPathsToInclude) {
		return true
	}

	return false
}

// SetUrlPathsToInclude gets a reference to the given []string and assigns it to the UrlPathsToInclude field.
func (o *SitemapScrapeRequest) SetUrlPathsToInclude(v []string) {
	o.UrlPathsToInclude = v
}

// GetUrlPathsToExclude returns the UrlPathsToExclude field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetUrlPathsToExclude() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.UrlPathsToExclude
}

// GetUrlPathsToExcludeOk returns a tuple with the UrlPathsToExclude field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetUrlPathsToExcludeOk() ([]string, bool) {
	if o == nil || isNil(o.UrlPathsToExclude) {
    return nil, false
	}
	return o.UrlPathsToExclude, true
}

// HasUrlPathsToExclude returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasUrlPathsToExclude() bool {
	if o != nil && isNil(o.UrlPathsToExclude) {
		return true
	}

	return false
}

// SetUrlPathsToExclude gets a reference to the given []string and assigns it to the UrlPathsToExclude field.
func (o *SitemapScrapeRequest) SetUrlPathsToExclude(v []string) {
	o.UrlPathsToExclude = v
}

// GetUrlsToScrape returns the UrlsToScrape field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetUrlsToScrape() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.UrlsToScrape
}

// GetUrlsToScrapeOk returns a tuple with the UrlsToScrape field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetUrlsToScrapeOk() ([]string, bool) {
	if o == nil || isNil(o.UrlsToScrape) {
    return nil, false
	}
	return o.UrlsToScrape, true
}

// HasUrlsToScrape returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasUrlsToScrape() bool {
	if o != nil && isNil(o.UrlsToScrape) {
		return true
	}

	return false
}

// SetUrlsToScrape gets a reference to the given []string and assigns it to the UrlsToScrape field.
func (o *SitemapScrapeRequest) SetUrlsToScrape(v []string) {
	o.UrlsToScrape = v
}

// GetDownloadCssAndMedia returns the DownloadCssAndMedia field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SitemapScrapeRequest) GetDownloadCssAndMedia() bool {
	if o == nil || isNil(o.DownloadCssAndMedia.Get()) {
		var ret bool
		return ret
	}
	return *o.DownloadCssAndMedia.Get()
}

// GetDownloadCssAndMediaOk returns a tuple with the DownloadCssAndMedia field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SitemapScrapeRequest) GetDownloadCssAndMediaOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return o.DownloadCssAndMedia.Get(), o.DownloadCssAndMedia.IsSet()
}

// HasDownloadCssAndMedia returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasDownloadCssAndMedia() bool {
	if o != nil && o.DownloadCssAndMedia.IsSet() {
		return true
	}

	return false
}

// SetDownloadCssAndMedia gets a reference to the given NullableBool and assigns it to the DownloadCssAndMedia field.
func (o *SitemapScrapeRequest) SetDownloadCssAndMedia(v bool) {
	o.DownloadCssAndMedia.Set(&v)
}
// SetDownloadCssAndMediaNil sets the value for DownloadCssAndMedia to be an explicit nil
func (o *SitemapScrapeRequest) SetDownloadCssAndMediaNil() {
	o.DownloadCssAndMedia.Set(nil)
}

// UnsetDownloadCssAndMedia ensures that no value is present for DownloadCssAndMedia, not even an explicit nil
func (o *SitemapScrapeRequest) UnsetDownloadCssAndMedia() {
	o.DownloadCssAndMedia.Unset()
}

// GetGenerateChunksOnly returns the GenerateChunksOnly field value if set, zero value otherwise.
func (o *SitemapScrapeRequest) GetGenerateChunksOnly() bool {
	if o == nil || isNil(o.GenerateChunksOnly) {
		var ret bool
		return ret
	}
	return *o.GenerateChunksOnly
}

// GetGenerateChunksOnlyOk returns a tuple with the GenerateChunksOnly field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SitemapScrapeRequest) GetGenerateChunksOnlyOk() (*bool, bool) {
	if o == nil || isNil(o.GenerateChunksOnly) {
    return nil, false
	}
	return o.GenerateChunksOnly, true
}

// HasGenerateChunksOnly returns a boolean if a field has been set.
func (o *SitemapScrapeRequest) HasGenerateChunksOnly() bool {
	if o != nil && !isNil(o.GenerateChunksOnly) {
		return true
	}

	return false
}

// SetGenerateChunksOnly gets a reference to the given bool and assigns it to the GenerateChunksOnly field.
func (o *SitemapScrapeRequest) SetGenerateChunksOnly(v bool) {
	o.GenerateChunksOnly = &v
}

func (o SitemapScrapeRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Tags != nil {
		toSerialize["tags"] = o.Tags
	}
	if true {
		toSerialize["url"] = o.Url
	}
	if o.MaxPagesToScrape.IsSet() {
		toSerialize["max_pages_to_scrape"] = o.MaxPagesToScrape.Get()
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
	if o.EnableAutoSync.IsSet() {
		toSerialize["enable_auto_sync"] = o.EnableAutoSync.Get()
	}
	if o.GenerateSparseVectors.IsSet() {
		toSerialize["generate_sparse_vectors"] = o.GenerateSparseVectors.Get()
	}
	if o.PrependFilenameToChunks.IsSet() {
		toSerialize["prepend_filename_to_chunks"] = o.PrependFilenameToChunks.Get()
	}
	if o.HtmlTagsToSkip != nil {
		toSerialize["html_tags_to_skip"] = o.HtmlTagsToSkip
	}
	if o.CssClassesToSkip != nil {
		toSerialize["css_classes_to_skip"] = o.CssClassesToSkip
	}
	if o.CssSelectorsToSkip != nil {
		toSerialize["css_selectors_to_skip"] = o.CssSelectorsToSkip
	}
	if !isNil(o.EmbeddingModel) {
		toSerialize["embedding_model"] = o.EmbeddingModel
	}
	if o.UrlPathsToInclude != nil {
		toSerialize["url_paths_to_include"] = o.UrlPathsToInclude
	}
	if o.UrlPathsToExclude != nil {
		toSerialize["url_paths_to_exclude"] = o.UrlPathsToExclude
	}
	if o.UrlsToScrape != nil {
		toSerialize["urls_to_scrape"] = o.UrlsToScrape
	}
	if o.DownloadCssAndMedia.IsSet() {
		toSerialize["download_css_and_media"] = o.DownloadCssAndMedia.Get()
	}
	if !isNil(o.GenerateChunksOnly) {
		toSerialize["generate_chunks_only"] = o.GenerateChunksOnly
	}
	return json.Marshal(toSerialize)
}

type NullableSitemapScrapeRequest struct {
	value *SitemapScrapeRequest
	isSet bool
}

func (v NullableSitemapScrapeRequest) Get() *SitemapScrapeRequest {
	return v.value
}

func (v *NullableSitemapScrapeRequest) Set(val *SitemapScrapeRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableSitemapScrapeRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableSitemapScrapeRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSitemapScrapeRequest(val *SitemapScrapeRequest) *NullableSitemapScrapeRequest {
	return &NullableSitemapScrapeRequest{value: val, isSet: true}
}

func (v NullableSitemapScrapeRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSitemapScrapeRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


