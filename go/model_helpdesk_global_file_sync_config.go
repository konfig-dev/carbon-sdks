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

// HelpdeskGlobalFileSyncConfig struct for HelpdeskGlobalFileSyncConfig
type HelpdeskGlobalFileSyncConfig struct {
	SyncAttachments *bool `json:"sync_attachments,omitempty"`
}

// NewHelpdeskGlobalFileSyncConfig instantiates a new HelpdeskGlobalFileSyncConfig object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewHelpdeskGlobalFileSyncConfig() *HelpdeskGlobalFileSyncConfig {
	this := HelpdeskGlobalFileSyncConfig{}
	var syncAttachments bool = false
	this.SyncAttachments = &syncAttachments
	return &this
}

// NewHelpdeskGlobalFileSyncConfigWithDefaults instantiates a new HelpdeskGlobalFileSyncConfig object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewHelpdeskGlobalFileSyncConfigWithDefaults() *HelpdeskGlobalFileSyncConfig {
	this := HelpdeskGlobalFileSyncConfig{}
	var syncAttachments bool = false
	this.SyncAttachments = &syncAttachments
	return &this
}

// GetSyncAttachments returns the SyncAttachments field value if set, zero value otherwise.
func (o *HelpdeskGlobalFileSyncConfig) GetSyncAttachments() bool {
	if o == nil || isNil(o.SyncAttachments) {
		var ret bool
		return ret
	}
	return *o.SyncAttachments
}

// GetSyncAttachmentsOk returns a tuple with the SyncAttachments field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *HelpdeskGlobalFileSyncConfig) GetSyncAttachmentsOk() (*bool, bool) {
	if o == nil || isNil(o.SyncAttachments) {
    return nil, false
	}
	return o.SyncAttachments, true
}

// HasSyncAttachments returns a boolean if a field has been set.
func (o *HelpdeskGlobalFileSyncConfig) HasSyncAttachments() bool {
	if o != nil && !isNil(o.SyncAttachments) {
		return true
	}

	return false
}

// SetSyncAttachments gets a reference to the given bool and assigns it to the SyncAttachments field.
func (o *HelpdeskGlobalFileSyncConfig) SetSyncAttachments(v bool) {
	o.SyncAttachments = &v
}

func (o HelpdeskGlobalFileSyncConfig) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.SyncAttachments) {
		toSerialize["sync_attachments"] = o.SyncAttachments
	}
	return json.Marshal(toSerialize)
}

type NullableHelpdeskGlobalFileSyncConfig struct {
	value *HelpdeskGlobalFileSyncConfig
	isSet bool
}

func (v NullableHelpdeskGlobalFileSyncConfig) Get() *HelpdeskGlobalFileSyncConfig {
	return v.value
}

func (v *NullableHelpdeskGlobalFileSyncConfig) Set(val *HelpdeskGlobalFileSyncConfig) {
	v.value = val
	v.isSet = true
}

func (v NullableHelpdeskGlobalFileSyncConfig) IsSet() bool {
	return v.isSet
}

func (v *NullableHelpdeskGlobalFileSyncConfig) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableHelpdeskGlobalFileSyncConfig(val *HelpdeskGlobalFileSyncConfig) *NullableHelpdeskGlobalFileSyncConfig {
	return &NullableHelpdeskGlobalFileSyncConfig{value: val, isSet: true}
}

func (v NullableHelpdeskGlobalFileSyncConfig) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableHelpdeskGlobalFileSyncConfig) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


