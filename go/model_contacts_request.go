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

// ContactsRequest struct for ContactsRequest
type ContactsRequest struct {
	DataSourceId int32 `json:"data_source_id"`
	IncludeRemoteData *bool `json:"include_remote_data,omitempty"`
	NextCursor NullableString `json:"next_cursor,omitempty"`
	PageSize NullableInt32 `json:"page_size,omitempty"`
	OrderDir NullableOrderDirV2Nullable `json:"order_dir,omitempty"`
	Includes []BaseIncludes `json:"includes,omitempty"`
	Filters *ContactFilters `json:"filters,omitempty"`
	OrderBy NullableContactsOrderByNullable `json:"order_by,omitempty"`
}

// NewContactsRequest instantiates a new ContactsRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewContactsRequest(dataSourceId int32) *ContactsRequest {
	this := ContactsRequest{}
	this.DataSourceId = dataSourceId
	var includeRemoteData bool = false
	this.IncludeRemoteData = &includeRemoteData
	var orderDir OrderDirV2Nullable = ORDERDIRV2NULLABLE_ASC
	this.OrderDir = *NewNullableOrderDirV2Nullable(&orderDir)
	return &this
}

// NewContactsRequestWithDefaults instantiates a new ContactsRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewContactsRequestWithDefaults() *ContactsRequest {
	this := ContactsRequest{}
	var includeRemoteData bool = false
	this.IncludeRemoteData = &includeRemoteData
	var orderDir OrderDirV2Nullable = ORDERDIRV2NULLABLE_ASC
	this.OrderDir = *NewNullableOrderDirV2Nullable(&orderDir)
	return &this
}

// GetDataSourceId returns the DataSourceId field value
func (o *ContactsRequest) GetDataSourceId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.DataSourceId
}

// GetDataSourceIdOk returns a tuple with the DataSourceId field value
// and a boolean to check if the value has been set.
func (o *ContactsRequest) GetDataSourceIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.DataSourceId, true
}

// SetDataSourceId sets field value
func (o *ContactsRequest) SetDataSourceId(v int32) {
	o.DataSourceId = v
}

// GetIncludeRemoteData returns the IncludeRemoteData field value if set, zero value otherwise.
func (o *ContactsRequest) GetIncludeRemoteData() bool {
	if o == nil || isNil(o.IncludeRemoteData) {
		var ret bool
		return ret
	}
	return *o.IncludeRemoteData
}

// GetIncludeRemoteDataOk returns a tuple with the IncludeRemoteData field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ContactsRequest) GetIncludeRemoteDataOk() (*bool, bool) {
	if o == nil || isNil(o.IncludeRemoteData) {
    return nil, false
	}
	return o.IncludeRemoteData, true
}

// HasIncludeRemoteData returns a boolean if a field has been set.
func (o *ContactsRequest) HasIncludeRemoteData() bool {
	if o != nil && !isNil(o.IncludeRemoteData) {
		return true
	}

	return false
}

// SetIncludeRemoteData gets a reference to the given bool and assigns it to the IncludeRemoteData field.
func (o *ContactsRequest) SetIncludeRemoteData(v bool) {
	o.IncludeRemoteData = &v
}

// GetNextCursor returns the NextCursor field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ContactsRequest) GetNextCursor() string {
	if o == nil || isNil(o.NextCursor.Get()) {
		var ret string
		return ret
	}
	return *o.NextCursor.Get()
}

// GetNextCursorOk returns a tuple with the NextCursor field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ContactsRequest) GetNextCursorOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.NextCursor.Get(), o.NextCursor.IsSet()
}

// HasNextCursor returns a boolean if a field has been set.
func (o *ContactsRequest) HasNextCursor() bool {
	if o != nil && o.NextCursor.IsSet() {
		return true
	}

	return false
}

// SetNextCursor gets a reference to the given NullableString and assigns it to the NextCursor field.
func (o *ContactsRequest) SetNextCursor(v string) {
	o.NextCursor.Set(&v)
}
// SetNextCursorNil sets the value for NextCursor to be an explicit nil
func (o *ContactsRequest) SetNextCursorNil() {
	o.NextCursor.Set(nil)
}

// UnsetNextCursor ensures that no value is present for NextCursor, not even an explicit nil
func (o *ContactsRequest) UnsetNextCursor() {
	o.NextCursor.Unset()
}

// GetPageSize returns the PageSize field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ContactsRequest) GetPageSize() int32 {
	if o == nil || isNil(o.PageSize.Get()) {
		var ret int32
		return ret
	}
	return *o.PageSize.Get()
}

// GetPageSizeOk returns a tuple with the PageSize field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ContactsRequest) GetPageSizeOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.PageSize.Get(), o.PageSize.IsSet()
}

// HasPageSize returns a boolean if a field has been set.
func (o *ContactsRequest) HasPageSize() bool {
	if o != nil && o.PageSize.IsSet() {
		return true
	}

	return false
}

// SetPageSize gets a reference to the given NullableInt32 and assigns it to the PageSize field.
func (o *ContactsRequest) SetPageSize(v int32) {
	o.PageSize.Set(&v)
}
// SetPageSizeNil sets the value for PageSize to be an explicit nil
func (o *ContactsRequest) SetPageSizeNil() {
	o.PageSize.Set(nil)
}

// UnsetPageSize ensures that no value is present for PageSize, not even an explicit nil
func (o *ContactsRequest) UnsetPageSize() {
	o.PageSize.Unset()
}

// GetOrderDir returns the OrderDir field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ContactsRequest) GetOrderDir() OrderDirV2Nullable {
	if o == nil || isNil(o.OrderDir.Get()) {
		var ret OrderDirV2Nullable
		return ret
	}
	return *o.OrderDir.Get()
}

// GetOrderDirOk returns a tuple with the OrderDir field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ContactsRequest) GetOrderDirOk() (*OrderDirV2Nullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.OrderDir.Get(), o.OrderDir.IsSet()
}

// HasOrderDir returns a boolean if a field has been set.
func (o *ContactsRequest) HasOrderDir() bool {
	if o != nil && o.OrderDir.IsSet() {
		return true
	}

	return false
}

// SetOrderDir gets a reference to the given NullableOrderDirV2Nullable and assigns it to the OrderDir field.
func (o *ContactsRequest) SetOrderDir(v OrderDirV2Nullable) {
	o.OrderDir.Set(&v)
}
// SetOrderDirNil sets the value for OrderDir to be an explicit nil
func (o *ContactsRequest) SetOrderDirNil() {
	o.OrderDir.Set(nil)
}

// UnsetOrderDir ensures that no value is present for OrderDir, not even an explicit nil
func (o *ContactsRequest) UnsetOrderDir() {
	o.OrderDir.Unset()
}

// GetIncludes returns the Includes field value if set, zero value otherwise.
func (o *ContactsRequest) GetIncludes() []BaseIncludes {
	if o == nil || isNil(o.Includes) {
		var ret []BaseIncludes
		return ret
	}
	return o.Includes
}

// GetIncludesOk returns a tuple with the Includes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ContactsRequest) GetIncludesOk() ([]BaseIncludes, bool) {
	if o == nil || isNil(o.Includes) {
    return nil, false
	}
	return o.Includes, true
}

// HasIncludes returns a boolean if a field has been set.
func (o *ContactsRequest) HasIncludes() bool {
	if o != nil && !isNil(o.Includes) {
		return true
	}

	return false
}

// SetIncludes gets a reference to the given []BaseIncludes and assigns it to the Includes field.
func (o *ContactsRequest) SetIncludes(v []BaseIncludes) {
	o.Includes = v
}

// GetFilters returns the Filters field value if set, zero value otherwise.
func (o *ContactsRequest) GetFilters() ContactFilters {
	if o == nil || isNil(o.Filters) {
		var ret ContactFilters
		return ret
	}
	return *o.Filters
}

// GetFiltersOk returns a tuple with the Filters field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ContactsRequest) GetFiltersOk() (*ContactFilters, bool) {
	if o == nil || isNil(o.Filters) {
    return nil, false
	}
	return o.Filters, true
}

// HasFilters returns a boolean if a field has been set.
func (o *ContactsRequest) HasFilters() bool {
	if o != nil && !isNil(o.Filters) {
		return true
	}

	return false
}

// SetFilters gets a reference to the given ContactFilters and assigns it to the Filters field.
func (o *ContactsRequest) SetFilters(v ContactFilters) {
	o.Filters = &v
}

// GetOrderBy returns the OrderBy field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ContactsRequest) GetOrderBy() ContactsOrderByNullable {
	if o == nil || isNil(o.OrderBy.Get()) {
		var ret ContactsOrderByNullable
		return ret
	}
	return *o.OrderBy.Get()
}

// GetOrderByOk returns a tuple with the OrderBy field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ContactsRequest) GetOrderByOk() (*ContactsOrderByNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.OrderBy.Get(), o.OrderBy.IsSet()
}

// HasOrderBy returns a boolean if a field has been set.
func (o *ContactsRequest) HasOrderBy() bool {
	if o != nil && o.OrderBy.IsSet() {
		return true
	}

	return false
}

// SetOrderBy gets a reference to the given NullableContactsOrderByNullable and assigns it to the OrderBy field.
func (o *ContactsRequest) SetOrderBy(v ContactsOrderByNullable) {
	o.OrderBy.Set(&v)
}
// SetOrderByNil sets the value for OrderBy to be an explicit nil
func (o *ContactsRequest) SetOrderByNil() {
	o.OrderBy.Set(nil)
}

// UnsetOrderBy ensures that no value is present for OrderBy, not even an explicit nil
func (o *ContactsRequest) UnsetOrderBy() {
	o.OrderBy.Unset()
}

func (o ContactsRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["data_source_id"] = o.DataSourceId
	}
	if !isNil(o.IncludeRemoteData) {
		toSerialize["include_remote_data"] = o.IncludeRemoteData
	}
	if o.NextCursor.IsSet() {
		toSerialize["next_cursor"] = o.NextCursor.Get()
	}
	if o.PageSize.IsSet() {
		toSerialize["page_size"] = o.PageSize.Get()
	}
	if o.OrderDir.IsSet() {
		toSerialize["order_dir"] = o.OrderDir.Get()
	}
	if !isNil(o.Includes) {
		toSerialize["includes"] = o.Includes
	}
	if !isNil(o.Filters) {
		toSerialize["filters"] = o.Filters
	}
	if o.OrderBy.IsSet() {
		toSerialize["order_by"] = o.OrderBy.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableContactsRequest struct {
	value *ContactsRequest
	isSet bool
}

func (v NullableContactsRequest) Get() *ContactsRequest {
	return v.value
}

func (v *NullableContactsRequest) Set(val *ContactsRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableContactsRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableContactsRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableContactsRequest(val *ContactsRequest) *NullableContactsRequest {
	return &NullableContactsRequest{value: val, isSet: true}
}

func (v NullableContactsRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableContactsRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

