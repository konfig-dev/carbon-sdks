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

// UserConfiguration struct for UserConfiguration
type UserConfiguration struct {
	AutoSyncEnabledSources NullableAutoSyncEnabledSourcesProperty `json:"auto_sync_enabled_sources,omitempty"`
	// Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit.
	MaxFiles NullableInt32 `json:"max_files,omitempty"`
	// Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit.
	MaxFilesPerUpload NullableInt32 `json:"max_files_per_upload,omitempty"`
}

// NewUserConfiguration instantiates a new UserConfiguration object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUserConfiguration() *UserConfiguration {
	this := UserConfiguration{}
	return &this
}

// NewUserConfigurationWithDefaults instantiates a new UserConfiguration object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUserConfigurationWithDefaults() *UserConfiguration {
	this := UserConfiguration{}
	return &this
}

// GetAutoSyncEnabledSources returns the AutoSyncEnabledSources field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UserConfiguration) GetAutoSyncEnabledSources() AutoSyncEnabledSourcesProperty {
	if o == nil || isNil(o.AutoSyncEnabledSources.Get()) {
		var ret AutoSyncEnabledSourcesProperty
		return ret
	}
	return *o.AutoSyncEnabledSources.Get()
}

// GetAutoSyncEnabledSourcesOk returns a tuple with the AutoSyncEnabledSources field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserConfiguration) GetAutoSyncEnabledSourcesOk() (*AutoSyncEnabledSourcesProperty, bool) {
	if o == nil {
    return nil, false
	}
	return o.AutoSyncEnabledSources.Get(), o.AutoSyncEnabledSources.IsSet()
}

// HasAutoSyncEnabledSources returns a boolean if a field has been set.
func (o *UserConfiguration) HasAutoSyncEnabledSources() bool {
	if o != nil && o.AutoSyncEnabledSources.IsSet() {
		return true
	}

	return false
}

// SetAutoSyncEnabledSources gets a reference to the given NullableAutoSyncEnabledSourcesProperty and assigns it to the AutoSyncEnabledSources field.
func (o *UserConfiguration) SetAutoSyncEnabledSources(v AutoSyncEnabledSourcesProperty) {
	o.AutoSyncEnabledSources.Set(&v)
}
// SetAutoSyncEnabledSourcesNil sets the value for AutoSyncEnabledSources to be an explicit nil
func (o *UserConfiguration) SetAutoSyncEnabledSourcesNil() {
	o.AutoSyncEnabledSources.Set(nil)
}

// UnsetAutoSyncEnabledSources ensures that no value is present for AutoSyncEnabledSources, not even an explicit nil
func (o *UserConfiguration) UnsetAutoSyncEnabledSources() {
	o.AutoSyncEnabledSources.Unset()
}

// GetMaxFiles returns the MaxFiles field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UserConfiguration) GetMaxFiles() int32 {
	if o == nil || isNil(o.MaxFiles.Get()) {
		var ret int32
		return ret
	}
	return *o.MaxFiles.Get()
}

// GetMaxFilesOk returns a tuple with the MaxFiles field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserConfiguration) GetMaxFilesOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.MaxFiles.Get(), o.MaxFiles.IsSet()
}

// HasMaxFiles returns a boolean if a field has been set.
func (o *UserConfiguration) HasMaxFiles() bool {
	if o != nil && o.MaxFiles.IsSet() {
		return true
	}

	return false
}

// SetMaxFiles gets a reference to the given NullableInt32 and assigns it to the MaxFiles field.
func (o *UserConfiguration) SetMaxFiles(v int32) {
	o.MaxFiles.Set(&v)
}
// SetMaxFilesNil sets the value for MaxFiles to be an explicit nil
func (o *UserConfiguration) SetMaxFilesNil() {
	o.MaxFiles.Set(nil)
}

// UnsetMaxFiles ensures that no value is present for MaxFiles, not even an explicit nil
func (o *UserConfiguration) UnsetMaxFiles() {
	o.MaxFiles.Unset()
}

// GetMaxFilesPerUpload returns the MaxFilesPerUpload field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UserConfiguration) GetMaxFilesPerUpload() int32 {
	if o == nil || isNil(o.MaxFilesPerUpload.Get()) {
		var ret int32
		return ret
	}
	return *o.MaxFilesPerUpload.Get()
}

// GetMaxFilesPerUploadOk returns a tuple with the MaxFilesPerUpload field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserConfiguration) GetMaxFilesPerUploadOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.MaxFilesPerUpload.Get(), o.MaxFilesPerUpload.IsSet()
}

// HasMaxFilesPerUpload returns a boolean if a field has been set.
func (o *UserConfiguration) HasMaxFilesPerUpload() bool {
	if o != nil && o.MaxFilesPerUpload.IsSet() {
		return true
	}

	return false
}

// SetMaxFilesPerUpload gets a reference to the given NullableInt32 and assigns it to the MaxFilesPerUpload field.
func (o *UserConfiguration) SetMaxFilesPerUpload(v int32) {
	o.MaxFilesPerUpload.Set(&v)
}
// SetMaxFilesPerUploadNil sets the value for MaxFilesPerUpload to be an explicit nil
func (o *UserConfiguration) SetMaxFilesPerUploadNil() {
	o.MaxFilesPerUpload.Set(nil)
}

// UnsetMaxFilesPerUpload ensures that no value is present for MaxFilesPerUpload, not even an explicit nil
func (o *UserConfiguration) UnsetMaxFilesPerUpload() {
	o.MaxFilesPerUpload.Unset()
}

func (o UserConfiguration) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.AutoSyncEnabledSources.IsSet() {
		toSerialize["auto_sync_enabled_sources"] = o.AutoSyncEnabledSources.Get()
	}
	if o.MaxFiles.IsSet() {
		toSerialize["max_files"] = o.MaxFiles.Get()
	}
	if o.MaxFilesPerUpload.IsSet() {
		toSerialize["max_files_per_upload"] = o.MaxFilesPerUpload.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableUserConfiguration struct {
	value *UserConfiguration
	isSet bool
}

func (v NullableUserConfiguration) Get() *UserConfiguration {
	return v.value
}

func (v *NullableUserConfiguration) Set(val *UserConfiguration) {
	v.value = val
	v.isSet = true
}

func (v NullableUserConfiguration) IsSet() bool {
	return v.isSet
}

func (v *NullableUserConfiguration) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUserConfiguration(val *UserConfiguration) *NullableUserConfiguration {
	return &NullableUserConfiguration{value: val, isSet: true}
}

func (v NullableUserConfiguration) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUserConfiguration) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

