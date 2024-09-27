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

// OpportunityFilters struct for OpportunityFilters
type OpportunityFilters struct {
	OwnerId NullableString `json:"owner_id,omitempty"`
	AccountId NullableString `json:"account_id,omitempty"`
	Status NullableOpportunityStatusNullable `json:"status,omitempty"`
	Stage NullableString `json:"stage,omitempty"`
}

// NewOpportunityFilters instantiates a new OpportunityFilters object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOpportunityFilters() *OpportunityFilters {
	this := OpportunityFilters{}
	return &this
}

// NewOpportunityFiltersWithDefaults instantiates a new OpportunityFilters object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOpportunityFiltersWithDefaults() *OpportunityFilters {
	this := OpportunityFilters{}
	return &this
}

// GetOwnerId returns the OwnerId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OpportunityFilters) GetOwnerId() string {
	if o == nil || isNil(o.OwnerId.Get()) {
		var ret string
		return ret
	}
	return *o.OwnerId.Get()
}

// GetOwnerIdOk returns a tuple with the OwnerId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OpportunityFilters) GetOwnerIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.OwnerId.Get(), o.OwnerId.IsSet()
}

// HasOwnerId returns a boolean if a field has been set.
func (o *OpportunityFilters) HasOwnerId() bool {
	if o != nil && o.OwnerId.IsSet() {
		return true
	}

	return false
}

// SetOwnerId gets a reference to the given NullableString and assigns it to the OwnerId field.
func (o *OpportunityFilters) SetOwnerId(v string) {
	o.OwnerId.Set(&v)
}
// SetOwnerIdNil sets the value for OwnerId to be an explicit nil
func (o *OpportunityFilters) SetOwnerIdNil() {
	o.OwnerId.Set(nil)
}

// UnsetOwnerId ensures that no value is present for OwnerId, not even an explicit nil
func (o *OpportunityFilters) UnsetOwnerId() {
	o.OwnerId.Unset()
}

// GetAccountId returns the AccountId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OpportunityFilters) GetAccountId() string {
	if o == nil || isNil(o.AccountId.Get()) {
		var ret string
		return ret
	}
	return *o.AccountId.Get()
}

// GetAccountIdOk returns a tuple with the AccountId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OpportunityFilters) GetAccountIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.AccountId.Get(), o.AccountId.IsSet()
}

// HasAccountId returns a boolean if a field has been set.
func (o *OpportunityFilters) HasAccountId() bool {
	if o != nil && o.AccountId.IsSet() {
		return true
	}

	return false
}

// SetAccountId gets a reference to the given NullableString and assigns it to the AccountId field.
func (o *OpportunityFilters) SetAccountId(v string) {
	o.AccountId.Set(&v)
}
// SetAccountIdNil sets the value for AccountId to be an explicit nil
func (o *OpportunityFilters) SetAccountIdNil() {
	o.AccountId.Set(nil)
}

// UnsetAccountId ensures that no value is present for AccountId, not even an explicit nil
func (o *OpportunityFilters) UnsetAccountId() {
	o.AccountId.Unset()
}

// GetStatus returns the Status field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OpportunityFilters) GetStatus() OpportunityStatusNullable {
	if o == nil || isNil(o.Status.Get()) {
		var ret OpportunityStatusNullable
		return ret
	}
	return *o.Status.Get()
}

// GetStatusOk returns a tuple with the Status field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OpportunityFilters) GetStatusOk() (*OpportunityStatusNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Status.Get(), o.Status.IsSet()
}

// HasStatus returns a boolean if a field has been set.
func (o *OpportunityFilters) HasStatus() bool {
	if o != nil && o.Status.IsSet() {
		return true
	}

	return false
}

// SetStatus gets a reference to the given NullableOpportunityStatusNullable and assigns it to the Status field.
func (o *OpportunityFilters) SetStatus(v OpportunityStatusNullable) {
	o.Status.Set(&v)
}
// SetStatusNil sets the value for Status to be an explicit nil
func (o *OpportunityFilters) SetStatusNil() {
	o.Status.Set(nil)
}

// UnsetStatus ensures that no value is present for Status, not even an explicit nil
func (o *OpportunityFilters) UnsetStatus() {
	o.Status.Unset()
}

// GetStage returns the Stage field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OpportunityFilters) GetStage() string {
	if o == nil || isNil(o.Stage.Get()) {
		var ret string
		return ret
	}
	return *o.Stage.Get()
}

// GetStageOk returns a tuple with the Stage field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OpportunityFilters) GetStageOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Stage.Get(), o.Stage.IsSet()
}

// HasStage returns a boolean if a field has been set.
func (o *OpportunityFilters) HasStage() bool {
	if o != nil && o.Stage.IsSet() {
		return true
	}

	return false
}

// SetStage gets a reference to the given NullableString and assigns it to the Stage field.
func (o *OpportunityFilters) SetStage(v string) {
	o.Stage.Set(&v)
}
// SetStageNil sets the value for Stage to be an explicit nil
func (o *OpportunityFilters) SetStageNil() {
	o.Stage.Set(nil)
}

// UnsetStage ensures that no value is present for Stage, not even an explicit nil
func (o *OpportunityFilters) UnsetStage() {
	o.Stage.Unset()
}

func (o OpportunityFilters) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.OwnerId.IsSet() {
		toSerialize["owner_id"] = o.OwnerId.Get()
	}
	if o.AccountId.IsSet() {
		toSerialize["account_id"] = o.AccountId.Get()
	}
	if o.Status.IsSet() {
		toSerialize["status"] = o.Status.Get()
	}
	if o.Stage.IsSet() {
		toSerialize["stage"] = o.Stage.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableOpportunityFilters struct {
	value *OpportunityFilters
	isSet bool
}

func (v NullableOpportunityFilters) Get() *OpportunityFilters {
	return v.value
}

func (v *NullableOpportunityFilters) Set(val *OpportunityFilters) {
	v.value = val
	v.isSet = true
}

func (v NullableOpportunityFilters) IsSet() bool {
	return v.isSet
}

func (v *NullableOpportunityFilters) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOpportunityFilters(val *OpportunityFilters) *NullableOpportunityFilters {
	return &NullableOpportunityFilters{value: val, isSet: true}
}

func (v NullableOpportunityFilters) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOpportunityFilters) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

