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

// HybridSearchTuningParamsNullable Hybrid search tuning parameters. See the endpoint description for more details.
type HybridSearchTuningParamsNullable struct {
	WeightA float32 `json:"weight_a"`
	WeightB float32 `json:"weight_b"`
}

// NewHybridSearchTuningParamsNullable instantiates a new HybridSearchTuningParamsNullable object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewHybridSearchTuningParamsNullable(weightA float32, weightB float32) *HybridSearchTuningParamsNullable {
	this := HybridSearchTuningParamsNullable{}
	this.WeightA = weightA
	this.WeightB = weightB
	return &this
}

// NewHybridSearchTuningParamsNullableWithDefaults instantiates a new HybridSearchTuningParamsNullable object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewHybridSearchTuningParamsNullableWithDefaults() *HybridSearchTuningParamsNullable {
	this := HybridSearchTuningParamsNullable{}
	return &this
}

// GetWeightA returns the WeightA field value
func (o *HybridSearchTuningParamsNullable) GetWeightA() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.WeightA
}

// GetWeightAOk returns a tuple with the WeightA field value
// and a boolean to check if the value has been set.
func (o *HybridSearchTuningParamsNullable) GetWeightAOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.WeightA, true
}

// SetWeightA sets field value
func (o *HybridSearchTuningParamsNullable) SetWeightA(v float32) {
	o.WeightA = v
}

// GetWeightB returns the WeightB field value
func (o *HybridSearchTuningParamsNullable) GetWeightB() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.WeightB
}

// GetWeightBOk returns a tuple with the WeightB field value
// and a boolean to check if the value has been set.
func (o *HybridSearchTuningParamsNullable) GetWeightBOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.WeightB, true
}

// SetWeightB sets field value
func (o *HybridSearchTuningParamsNullable) SetWeightB(v float32) {
	o.WeightB = v
}

func (o HybridSearchTuningParamsNullable) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["weight_a"] = o.WeightA
	}
	if true {
		toSerialize["weight_b"] = o.WeightB
	}
	return json.Marshal(toSerialize)
}

type NullableHybridSearchTuningParamsNullable struct {
	value *HybridSearchTuningParamsNullable
	isSet bool
}

func (v NullableHybridSearchTuningParamsNullable) Get() *HybridSearchTuningParamsNullable {
	return v.value
}

func (v *NullableHybridSearchTuningParamsNullable) Set(val *HybridSearchTuningParamsNullable) {
	v.value = val
	v.isSet = true
}

func (v NullableHybridSearchTuningParamsNullable) IsSet() bool {
	return v.isSet
}

func (v *NullableHybridSearchTuningParamsNullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableHybridSearchTuningParamsNullable(val *HybridSearchTuningParamsNullable) *NullableHybridSearchTuningParamsNullable {
	return &NullableHybridSearchTuningParamsNullable{value: val, isSet: true}
}

func (v NullableHybridSearchTuningParamsNullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableHybridSearchTuningParamsNullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


