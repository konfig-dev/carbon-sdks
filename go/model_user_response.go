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

// UserResponse struct for UserResponse
type UserResponse struct {
	Id int32 `json:"id"`
	OrganizationId int32 `json:"organization_id"`
	OrganizationSuppliedUserId string `json:"organization_supplied_user_id"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	DeletedAt NullableTime `json:"deleted_at"`
	NumFilesSynced int32 `json:"num_files_synced"`
	NumCharactersSynced int32 `json:"num_characters_synced"`
	NumTokensSynced int32 `json:"num_tokens_synced"`
	UniqueFileTags []map[string]interface{} `json:"unique_file_tags"`
	EnabledFeatures map[string]interface{} `json:"enabled_features"`
}

// NewUserResponse instantiates a new UserResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUserResponse(id int32, organizationId int32, organizationSuppliedUserId string, createdAt time.Time, updatedAt time.Time, deletedAt NullableTime, numFilesSynced int32, numCharactersSynced int32, numTokensSynced int32, uniqueFileTags []map[string]interface{}, enabledFeatures map[string]interface{}) *UserResponse {
	this := UserResponse{}
	this.Id = id
	this.OrganizationId = organizationId
	this.OrganizationSuppliedUserId = organizationSuppliedUserId
	this.CreatedAt = createdAt
	this.UpdatedAt = updatedAt
	this.DeletedAt = deletedAt
	this.NumFilesSynced = numFilesSynced
	this.NumCharactersSynced = numCharactersSynced
	this.NumTokensSynced = numTokensSynced
	this.UniqueFileTags = uniqueFileTags
	this.EnabledFeatures = enabledFeatures
	return &this
}

// NewUserResponseWithDefaults instantiates a new UserResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUserResponseWithDefaults() *UserResponse {
	this := UserResponse{}
	return &this
}

// GetId returns the Id field value
func (o *UserResponse) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *UserResponse) SetId(v int32) {
	o.Id = v
}

// GetOrganizationId returns the OrganizationId field value
func (o *UserResponse) GetOrganizationId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.OrganizationId
}

// GetOrganizationIdOk returns a tuple with the OrganizationId field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetOrganizationIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationId, true
}

// SetOrganizationId sets field value
func (o *UserResponse) SetOrganizationId(v int32) {
	o.OrganizationId = v
}

// GetOrganizationSuppliedUserId returns the OrganizationSuppliedUserId field value
func (o *UserResponse) GetOrganizationSuppliedUserId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OrganizationSuppliedUserId
}

// GetOrganizationSuppliedUserIdOk returns a tuple with the OrganizationSuppliedUserId field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetOrganizationSuppliedUserIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrganizationSuppliedUserId, true
}

// SetOrganizationSuppliedUserId sets field value
func (o *UserResponse) SetOrganizationSuppliedUserId(v string) {
	o.OrganizationSuppliedUserId = v
}

// GetCreatedAt returns the CreatedAt field value
func (o *UserResponse) GetCreatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.CreatedAt
}

// GetCreatedAtOk returns a tuple with the CreatedAt field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetCreatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CreatedAt, true
}

// SetCreatedAt sets field value
func (o *UserResponse) SetCreatedAt(v time.Time) {
	o.CreatedAt = v
}

// GetUpdatedAt returns the UpdatedAt field value
func (o *UserResponse) GetUpdatedAt() time.Time {
	if o == nil {
		var ret time.Time
		return ret
	}

	return o.UpdatedAt
}

// GetUpdatedAtOk returns a tuple with the UpdatedAt field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetUpdatedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UpdatedAt, true
}

// SetUpdatedAt sets field value
func (o *UserResponse) SetUpdatedAt(v time.Time) {
	o.UpdatedAt = v
}

// GetDeletedAt returns the DeletedAt field value
// If the value is explicit nil, the zero value for time.Time will be returned
func (o *UserResponse) GetDeletedAt() time.Time {
	if o == nil || o.DeletedAt.Get() == nil {
		var ret time.Time
		return ret
	}

	return *o.DeletedAt.Get()
}

// GetDeletedAtOk returns a tuple with the DeletedAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserResponse) GetDeletedAtOk() (*time.Time, bool) {
	if o == nil {
    return nil, false
	}
	return o.DeletedAt.Get(), o.DeletedAt.IsSet()
}

// SetDeletedAt sets field value
func (o *UserResponse) SetDeletedAt(v time.Time) {
	o.DeletedAt.Set(&v)
}

// GetNumFilesSynced returns the NumFilesSynced field value
func (o *UserResponse) GetNumFilesSynced() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.NumFilesSynced
}

// GetNumFilesSyncedOk returns a tuple with the NumFilesSynced field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetNumFilesSyncedOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.NumFilesSynced, true
}

// SetNumFilesSynced sets field value
func (o *UserResponse) SetNumFilesSynced(v int32) {
	o.NumFilesSynced = v
}

// GetNumCharactersSynced returns the NumCharactersSynced field value
func (o *UserResponse) GetNumCharactersSynced() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.NumCharactersSynced
}

// GetNumCharactersSyncedOk returns a tuple with the NumCharactersSynced field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetNumCharactersSyncedOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.NumCharactersSynced, true
}

// SetNumCharactersSynced sets field value
func (o *UserResponse) SetNumCharactersSynced(v int32) {
	o.NumCharactersSynced = v
}

// GetNumTokensSynced returns the NumTokensSynced field value
func (o *UserResponse) GetNumTokensSynced() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.NumTokensSynced
}

// GetNumTokensSyncedOk returns a tuple with the NumTokensSynced field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetNumTokensSyncedOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.NumTokensSynced, true
}

// SetNumTokensSynced sets field value
func (o *UserResponse) SetNumTokensSynced(v int32) {
	o.NumTokensSynced = v
}

// GetUniqueFileTags returns the UniqueFileTags field value
func (o *UserResponse) GetUniqueFileTags() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.UniqueFileTags
}

// GetUniqueFileTagsOk returns a tuple with the UniqueFileTags field value
// and a boolean to check if the value has been set.
func (o *UserResponse) GetUniqueFileTagsOk() ([]map[string]interface{}, bool) {
	if o == nil {
    return nil, false
	}
	return o.UniqueFileTags, true
}

// SetUniqueFileTags sets field value
func (o *UserResponse) SetUniqueFileTags(v []map[string]interface{}) {
	o.UniqueFileTags = v
}

// GetEnabledFeatures returns the EnabledFeatures field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *UserResponse) GetEnabledFeatures() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.EnabledFeatures
}

// GetEnabledFeaturesOk returns a tuple with the EnabledFeatures field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UserResponse) GetEnabledFeaturesOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.EnabledFeatures) {
    return map[string]interface{}{}, false
	}
	return o.EnabledFeatures, true
}

// SetEnabledFeatures sets field value
func (o *UserResponse) SetEnabledFeatures(v map[string]interface{}) {
	o.EnabledFeatures = v
}

func (o UserResponse) MarshalJSON() ([]byte, error) {
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
	if true {
		toSerialize["num_files_synced"] = o.NumFilesSynced
	}
	if true {
		toSerialize["num_characters_synced"] = o.NumCharactersSynced
	}
	if true {
		toSerialize["num_tokens_synced"] = o.NumTokensSynced
	}
	if true {
		toSerialize["unique_file_tags"] = o.UniqueFileTags
	}
	if o.EnabledFeatures != nil {
		toSerialize["enabled_features"] = o.EnabledFeatures
	}
	return json.Marshal(toSerialize)
}

type NullableUserResponse struct {
	value *UserResponse
	isSet bool
}

func (v NullableUserResponse) Get() *UserResponse {
	return v.value
}

func (v *NullableUserResponse) Set(val *UserResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableUserResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableUserResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUserResponse(val *UserResponse) *NullableUserResponse {
	return &NullableUserResponse{value: val, isSet: true}
}

func (v NullableUserResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUserResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


