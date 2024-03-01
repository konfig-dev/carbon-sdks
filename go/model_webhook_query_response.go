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

// WebhookQueryResponse struct for WebhookQueryResponse
type WebhookQueryResponse struct {
	Results []WebhookNoKey `json:"results"`
	Count int32 `json:"count"`
}

// NewWebhookQueryResponse instantiates a new WebhookQueryResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewWebhookQueryResponse(results []WebhookNoKey, count int32) *WebhookQueryResponse {
	this := WebhookQueryResponse{}
	this.Results = results
	this.Count = count
	return &this
}

// NewWebhookQueryResponseWithDefaults instantiates a new WebhookQueryResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewWebhookQueryResponseWithDefaults() *WebhookQueryResponse {
	this := WebhookQueryResponse{}
	return &this
}

// GetResults returns the Results field value
func (o *WebhookQueryResponse) GetResults() []WebhookNoKey {
	if o == nil {
		var ret []WebhookNoKey
		return ret
	}

	return o.Results
}

// GetResultsOk returns a tuple with the Results field value
// and a boolean to check if the value has been set.
func (o *WebhookQueryResponse) GetResultsOk() ([]WebhookNoKey, bool) {
	if o == nil {
    return nil, false
	}
	return o.Results, true
}

// SetResults sets field value
func (o *WebhookQueryResponse) SetResults(v []WebhookNoKey) {
	o.Results = v
}

// GetCount returns the Count field value
func (o *WebhookQueryResponse) GetCount() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Count
}

// GetCountOk returns a tuple with the Count field value
// and a boolean to check if the value has been set.
func (o *WebhookQueryResponse) GetCountOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Count, true
}

// SetCount sets field value
func (o *WebhookQueryResponse) SetCount(v int32) {
	o.Count = v
}

func (o WebhookQueryResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["results"] = o.Results
	}
	if true {
		toSerialize["count"] = o.Count
	}
	return json.Marshal(toSerialize)
}

type NullableWebhookQueryResponse struct {
	value *WebhookQueryResponse
	isSet bool
}

func (v NullableWebhookQueryResponse) Get() *WebhookQueryResponse {
	return v.value
}

func (v *NullableWebhookQueryResponse) Set(val *WebhookQueryResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableWebhookQueryResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableWebhookQueryResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableWebhookQueryResponse(val *WebhookQueryResponse) *NullableWebhookQueryResponse {
	return &NullableWebhookQueryResponse{value: val, isSet: true}
}

func (v NullableWebhookQueryResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableWebhookQueryResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


