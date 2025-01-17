/*
Carbon

Connect external data to LLMs, no matter the source.

API version: 1.0.0
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package carbon

import (
	"encoding/json"
	"time"
)

// ListUserResponse struct for ListUserResponse
type ListUserResponse struct {
	Id int32 `json:"id"`
	OrganizationId int32 `json:"organization_id"`
	OrganizationSuppliedUserId string `json:"organization_supplied_user_id"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	DeletedAt NullableTime `json:"deleted_at"`
	EnabledFeatures map[string]interface{} `json:"enabled_features"`
	CustomLimits map[string]interface{} `json:"custom_limits,omitempty"`
	AutoSyncEnabledSources []interface{} `json:"auto_sync_enabled_sources,omitempty"`
}

// NewListUserResponse instantiates a new ListUserResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewListUserResponse(id int32, organizationId int32, organizationSuppliedUserId string, createdAt time.Time, updatedAt time.Time, deletedAt NullableTime, enabledFeatures map[string]interface{}) *ListUserResponse {
	this := ListUserResponse{}
	this.Id = id
	this.OrganizationId = organizationId
	this.OrganizationSuppliedUserId = organizationSuppliedUserId
	this.CreatedAt = createdAt
	this.UpdatedAt = updatedAt
	this.DeletedAt = deletedAt
	this.EnabledFeatures = enabledFeatures
	return &this
}

// NewListUserResponseWithDefaults instantiates a new ListUserResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewListUserResponseWithDefaults() *ListUserResponse {
	this := ListUserResponse{}
	return &this
}

// GetId returns the Id field value
func (o *ListUserResponse) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *ListUserResponse) SetId(v int32) {
	o.Id = v
}

// GetOrganizationId returns the OrganizationId field value
func (o *ListUserResponse) GetOrganizationId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.OrganizationId
}

// GetOrganizationIdOk returns a tuple with the OrganizationId field value
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetOrganizationIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationId, true
}

// SetOrganizationId sets field value
func (o *ListUserResponse) SetOrganizationId(v int32) {
	o.OrganizationId = v
}

// GetOrganizationSuppliedUserId returns the OrganizationSuppliedUserId field value
func (o *ListUserResponse) GetOrganizationSuppliedUserId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OrganizationSuppliedUserId
}

// GetOrganizationSuppliedUserIdOk returns a tuple with the OrganizationSuppliedUserId field value
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetOrganizationSuppliedUserIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationSuppliedUserId, true
}

// SetOrganizationSuppliedUserId sets field value
func (o *ListUserResponse) SetOrganizationSuppliedUserId(v string) {
	o.OrganizationSuppliedUserId = v
}

// GetCreatedAt returns the CreatedAt field value
func (o *ListUserResponse) GetCreatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.CreatedAt
}

// GetCreatedAtOk returns a tuple with the CreatedAt field value
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetCreatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CreatedAt, true
}

// SetCreatedAt sets field value
func (o *ListUserResponse) SetCreatedAt(v time.Time) {
	o.CreatedAt = v
}

// GetUpdatedAt returns the UpdatedAt field value
func (o *ListUserResponse) GetUpdatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.UpdatedAt
}

// GetUpdatedAtOk returns a tuple with the UpdatedAt field value
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetUpdatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UpdatedAt, true
}

// SetUpdatedAt sets field value
func (o *ListUserResponse) SetUpdatedAt(v time.Time) {
	o.UpdatedAt = v
}

// GetDeletedAt returns the DeletedAt field value
// If the value is explicit nil, the zero value for time.Time will be returned
func (o *ListUserResponse) GetDeletedAt() time.Time {
	if o == nil || o.DeletedAt.Get() == nil {
		var ret time.Time
		return ret
	}

	return *o.DeletedAt.Get()
}

// GetDeletedAtOk returns a tuple with the DeletedAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ListUserResponse) GetDeletedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return o.DeletedAt.Get(), o.DeletedAt.IsSet()
}

// SetDeletedAt sets field value
func (o *ListUserResponse) SetDeletedAt(v time.Time) {
	o.DeletedAt.Set(&v)
}

// GetEnabledFeatures returns the EnabledFeatures field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *ListUserResponse) GetEnabledFeatures() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.EnabledFeatures
}

// GetEnabledFeaturesOk returns a tuple with the EnabledFeatures field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ListUserResponse) GetEnabledFeaturesOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.EnabledFeatures) {
    return map[string]interface{}{}, false
	}
	return o.EnabledFeatures, true
}

// SetEnabledFeatures sets field value
func (o *ListUserResponse) SetEnabledFeatures(v map[string]interface{}) {
	o.EnabledFeatures = v
}

// GetCustomLimits returns the CustomLimits field value if set, zero value otherwise.
func (o *ListUserResponse) GetCustomLimits() map[string]interface{} {
	if o == nil || isNil(o.CustomLimits) {
		var ret map[string]interface{}
		return ret
	}
	return o.CustomLimits
}

// GetCustomLimitsOk returns a tuple with the CustomLimits field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetCustomLimitsOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.CustomLimits) {
    return map[string]interface{}{}, false
	}
	return o.CustomLimits, true
}

// HasCustomLimits returns a boolean if a field has been set.
func (o *ListUserResponse) HasCustomLimits() bool {
	if o != nil && !isNil(o.CustomLimits) {
		return true
	}

	return false
}

// SetCustomLimits gets a reference to the given map[string]interface{} and assigns it to the CustomLimits field.
func (o *ListUserResponse) SetCustomLimits(v map[string]interface{}) {
	o.CustomLimits = v
}

// GetAutoSyncEnabledSources returns the AutoSyncEnabledSources field value if set, zero value otherwise.
func (o *ListUserResponse) GetAutoSyncEnabledSources() []interface{} {
	if o == nil || isNil(o.AutoSyncEnabledSources) {
		var ret []interface{}
		return ret
	}
	return o.AutoSyncEnabledSources
}

// GetAutoSyncEnabledSourcesOk returns a tuple with the AutoSyncEnabledSources field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ListUserResponse) GetAutoSyncEnabledSourcesOk() ([]interface{}, bool) {
	if o == nil || isNil(o.AutoSyncEnabledSources) {
    return nil, false
	}
	return o.AutoSyncEnabledSources, true
}

// HasAutoSyncEnabledSources returns a boolean if a field has been set.
func (o *ListUserResponse) HasAutoSyncEnabledSources() bool {
	if o != nil && !isNil(o.AutoSyncEnabledSources) {
		return true
	}

	return false
}

// SetAutoSyncEnabledSources gets a reference to the given []interface{} and assigns it to the AutoSyncEnabledSources field.
func (o *ListUserResponse) SetAutoSyncEnabledSources(v []interface{}) {
	o.AutoSyncEnabledSources = v
}

func (o ListUserResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["organization_id"] = o.OrganizationId
	}
	if true {
		toSerialize["organization_supplied_user_id"] = o.OrganizationSuppliedUserId
	}
	if true {
		toSerialize["created_at"] = o.CreatedAt
	}
	if true {
		toSerialize["updated_at"] = o.UpdatedAt
	}
	if true {
		toSerialize["deleted_at"] = o.DeletedAt.Get()
	}
	if o.EnabledFeatures != nil {
		toSerialize["enabled_features"] = o.EnabledFeatures
	}
	if !isNil(o.CustomLimits) {
		toSerialize["custom_limits"] = o.CustomLimits
	}
	if !isNil(o.AutoSyncEnabledSources) {
		toSerialize["auto_sync_enabled_sources"] = o.AutoSyncEnabledSources
	}
	return json.Marshal(toSerialize)
}

type NullableListUserResponse struct {
	value *ListUserResponse
	isSet bool
}

func (v NullableListUserResponse) Get() *ListUserResponse {
	return v.value
}

func (v *NullableListUserResponse) Set(val *ListUserResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableListUserResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableListUserResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableListUserResponse(val *ListUserResponse) *NullableListUserResponse {
	return &NullableListUserResponse{value: val, isSet: true}
}

func (v NullableListUserResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableListUserResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


