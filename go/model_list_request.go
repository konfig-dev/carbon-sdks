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

// ListRequest struct for ListRequest
type ListRequest struct {
	DataSourceId int32 `json:"data_source_id"`
	ParentId NullableString `json:"parent_id,omitempty"`
}

// NewListRequest instantiates a new ListRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewListRequest(dataSourceId int32) *ListRequest {
	this := ListRequest{}
	this.DataSourceId = dataSourceId
	return &this
}

// NewListRequestWithDefaults instantiates a new ListRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewListRequestWithDefaults() *ListRequest {
	this := ListRequest{}
	return &this
}

// GetDataSourceId returns the DataSourceId field value
func (o *ListRequest) GetDataSourceId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.DataSourceId
}

// GetDataSourceIdOk returns a tuple with the DataSourceId field value
// and a boolean to check if the value has been set.
func (o *ListRequest) GetDataSourceIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.DataSourceId, true
}

// SetDataSourceId sets field value
func (o *ListRequest) SetDataSourceId(v int32) {
	o.DataSourceId = v
}

// GetParentId returns the ParentId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ListRequest) GetParentId() string {
	if o == nil || isNil(o.ParentId.Get()) {
		var ret string
		return ret
	}
	return *o.ParentId.Get()
}

// GetParentIdOk returns a tuple with the ParentId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ListRequest) GetParentIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ParentId.Get(), o.ParentId.IsSet()
}

// HasParentId returns a boolean if a field has been set.
func (o *ListRequest) HasParentId() bool {
	if o != nil && o.ParentId.IsSet() {
		return true
	}

	return false
}

// SetParentId gets a reference to the given NullableString and assigns it to the ParentId field.
func (o *ListRequest) SetParentId(v string) {
	o.ParentId.Set(&v)
}
// SetParentIdNil sets the value for ParentId to be an explicit nil
func (o *ListRequest) SetParentIdNil() {
	o.ParentId.Set(nil)
}

// UnsetParentId ensures that no value is present for ParentId, not even an explicit nil
func (o *ListRequest) UnsetParentId() {
	o.ParentId.Unset()
}

func (o ListRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["data_source_id"] = o.DataSourceId
	}
	if o.ParentId.IsSet() {
		toSerialize["parent_id"] = o.ParentId.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableListRequest struct {
	value *ListRequest
	isSet bool
}

func (v NullableListRequest) Get() *ListRequest {
	return v.value
}

func (v *NullableListRequest) Set(val *ListRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableListRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableListRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableListRequest(val *ListRequest) *NullableListRequest {
	return &NullableListRequest{value: val, isSet: true}
}

func (v NullableListRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableListRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

