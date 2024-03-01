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

// RevokeAccessTokenInput struct for RevokeAccessTokenInput
type RevokeAccessTokenInput struct {
	DataSourceId int32 `json:"data_source_id"`
}

// NewRevokeAccessTokenInput instantiates a new RevokeAccessTokenInput object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRevokeAccessTokenInput(dataSourceId int32) *RevokeAccessTokenInput {
	this := RevokeAccessTokenInput{}
	this.DataSourceId = dataSourceId
	return &this
}

// NewRevokeAccessTokenInputWithDefaults instantiates a new RevokeAccessTokenInput object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRevokeAccessTokenInputWithDefaults() *RevokeAccessTokenInput {
	this := RevokeAccessTokenInput{}
	return &this
}

// GetDataSourceId returns the DataSourceId field value
func (o *RevokeAccessTokenInput) GetDataSourceId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.DataSourceId
}

// GetDataSourceIdOk returns a tuple with the DataSourceId field value
// and a boolean to check if the value has been set.
func (o *RevokeAccessTokenInput) GetDataSourceIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.DataSourceId, true
}

// SetDataSourceId sets field value
func (o *RevokeAccessTokenInput) SetDataSourceId(v int32) {
	o.DataSourceId = v
}

func (o RevokeAccessTokenInput) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["data_source_id"] = o.DataSourceId
	}
	return json.Marshal(toSerialize)
}

type NullableRevokeAccessTokenInput struct {
	value *RevokeAccessTokenInput
	isSet bool
}

func (v NullableRevokeAccessTokenInput) Get() *RevokeAccessTokenInput {
	return v.value
}

func (v *NullableRevokeAccessTokenInput) Set(val *RevokeAccessTokenInput) {
	v.value = val
	v.isSet = true
}

func (v NullableRevokeAccessTokenInput) IsSet() bool {
	return v.isSet
}

func (v *NullableRevokeAccessTokenInput) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRevokeAccessTokenInput(val *RevokeAccessTokenInput) *NullableRevokeAccessTokenInput {
	return &NullableRevokeAccessTokenInput{value: val, isSet: true}
}

func (v NullableRevokeAccessTokenInput) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRevokeAccessTokenInput) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


