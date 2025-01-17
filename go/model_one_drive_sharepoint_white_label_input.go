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

// OneDriveSharepointWhiteLabelInput struct for OneDriveSharepointWhiteLabelInput
type OneDriveSharepointWhiteLabelInput struct {
	DataSourceType string `json:"data_source_type"`
	Credentials OneDriveSharepointCredentials `json:"credentials"`
}

// NewOneDriveSharepointWhiteLabelInput instantiates a new OneDriveSharepointWhiteLabelInput object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOneDriveSharepointWhiteLabelInput(dataSourceType string, credentials OneDriveSharepointCredentials) *OneDriveSharepointWhiteLabelInput {
	this := OneDriveSharepointWhiteLabelInput{}
	this.DataSourceType = dataSourceType
	this.Credentials = credentials
	return &this
}

// NewOneDriveSharepointWhiteLabelInputWithDefaults instantiates a new OneDriveSharepointWhiteLabelInput object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOneDriveSharepointWhiteLabelInputWithDefaults() *OneDriveSharepointWhiteLabelInput {
	this := OneDriveSharepointWhiteLabelInput{}
	return &this
}

// GetDataSourceType returns the DataSourceType field value
func (o *OneDriveSharepointWhiteLabelInput) GetDataSourceType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.DataSourceType
}

// GetDataSourceTypeOk returns a tuple with the DataSourceType field value
// and a boolean to check if the value has been set.
func (o *OneDriveSharepointWhiteLabelInput) GetDataSourceTypeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.DataSourceType, true
}

// SetDataSourceType sets field value
func (o *OneDriveSharepointWhiteLabelInput) SetDataSourceType(v string) {
	o.DataSourceType = v
}

// GetCredentials returns the Credentials field value
func (o *OneDriveSharepointWhiteLabelInput) GetCredentials() OneDriveSharepointCredentials {
	if o == nil {
		var ret OneDriveSharepointCredentials
		return ret
	}

	return o.Credentials
}

// GetCredentialsOk returns a tuple with the Credentials field value
// and a boolean to check if the value has been set.
func (o *OneDriveSharepointWhiteLabelInput) GetCredentialsOk() (*OneDriveSharepointCredentials, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Credentials, true
}

// SetCredentials sets field value
func (o *OneDriveSharepointWhiteLabelInput) SetCredentials(v OneDriveSharepointCredentials) {
	o.Credentials = v
}

func (o OneDriveSharepointWhiteLabelInput) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["data_source_type"] = o.DataSourceType
	}
	if true {
		toSerialize["credentials"] = o.Credentials
	}
	return json.Marshal(toSerialize)
}

type NullableOneDriveSharepointWhiteLabelInput struct {
	value *OneDriveSharepointWhiteLabelInput
	isSet bool
}

func (v NullableOneDriveSharepointWhiteLabelInput) Get() *OneDriveSharepointWhiteLabelInput {
	return v.value
}

func (v *NullableOneDriveSharepointWhiteLabelInput) Set(val *OneDriveSharepointWhiteLabelInput) {
	v.value = val
	v.isSet = true
}

func (v NullableOneDriveSharepointWhiteLabelInput) IsSet() bool {
	return v.isSet
}

func (v *NullableOneDriveSharepointWhiteLabelInput) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOneDriveSharepointWhiteLabelInput(val *OneDriveSharepointWhiteLabelInput) *NullableOneDriveSharepointWhiteLabelInput {
	return &NullableOneDriveSharepointWhiteLabelInput{value: val, isSet: true}
}

func (v NullableOneDriveSharepointWhiteLabelInput) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOneDriveSharepointWhiteLabelInput) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


