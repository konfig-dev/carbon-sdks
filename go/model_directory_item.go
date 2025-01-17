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

// DirectoryItem struct for DirectoryItem
type DirectoryItem struct {
	Id string `json:"id"`
	Name string `json:"name"`
	IsSynced *bool `json:"is_synced,omitempty"`
	HasChildren *bool `json:"has_children,omitempty"`
}

// NewDirectoryItem instantiates a new DirectoryItem object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDirectoryItem(id string, name string) *DirectoryItem {
	this := DirectoryItem{}
	this.Id = id
	this.Name = name
	var isSynced bool = false
	this.IsSynced = &isSynced
	var hasChildren bool = false
	this.HasChildren = &hasChildren
	return &this
}

// NewDirectoryItemWithDefaults instantiates a new DirectoryItem object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDirectoryItemWithDefaults() *DirectoryItem {
	this := DirectoryItem{}
	var isSynced bool = false
	this.IsSynced = &isSynced
	var hasChildren bool = false
	this.HasChildren = &hasChildren
	return &this
}

// GetId returns the Id field value
func (o *DirectoryItem) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *DirectoryItem) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *DirectoryItem) SetId(v string) {
	o.Id = v
}

// GetName returns the Name field value
func (o *DirectoryItem) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *DirectoryItem) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *DirectoryItem) SetName(v string) {
	o.Name = v
}

// GetIsSynced returns the IsSynced field value if set, zero value otherwise.
func (o *DirectoryItem) GetIsSynced() bool {
	if o == nil || isNil(o.IsSynced) {
		var ret bool
		return ret
	}
	return *o.IsSynced
}

// GetIsSyncedOk returns a tuple with the IsSynced field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DirectoryItem) GetIsSyncedOk() (*bool, bool) {
	if o == nil || isNil(o.IsSynced) {
    return nil, false
	}
	return o.IsSynced, true
}

// HasIsSynced returns a boolean if a field has been set.
func (o *DirectoryItem) HasIsSynced() bool {
	if o != nil && !isNil(o.IsSynced) {
		return true
	}

	return false
}

// SetIsSynced gets a reference to the given bool and assigns it to the IsSynced field.
func (o *DirectoryItem) SetIsSynced(v bool) {
	o.IsSynced = &v
}

// GetHasChildren returns the HasChildren field value if set, zero value otherwise.
func (o *DirectoryItem) GetHasChildren() bool {
	if o == nil || isNil(o.HasChildren) {
		var ret bool
		return ret
	}
	return *o.HasChildren
}

// GetHasChildrenOk returns a tuple with the HasChildren field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DirectoryItem) GetHasChildrenOk() (*bool, bool) {
	if o == nil || isNil(o.HasChildren) {
    return nil, false
	}
	return o.HasChildren, true
}

// HasHasChildren returns a boolean if a field has been set.
func (o *DirectoryItem) HasHasChildren() bool {
	if o != nil && !isNil(o.HasChildren) {
		return true
	}

	return false
}

// SetHasChildren gets a reference to the given bool and assigns it to the HasChildren field.
func (o *DirectoryItem) SetHasChildren(v bool) {
	o.HasChildren = &v
}

func (o DirectoryItem) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["name"] = o.Name
	}
	if !isNil(o.IsSynced) {
		toSerialize["is_synced"] = o.IsSynced
	}
	if !isNil(o.HasChildren) {
		toSerialize["has_children"] = o.HasChildren
	}
	return json.Marshal(toSerialize)
}

type NullableDirectoryItem struct {
	value *DirectoryItem
	isSet bool
}

func (v NullableDirectoryItem) Get() *DirectoryItem {
	return v.value
}

func (v *NullableDirectoryItem) Set(val *DirectoryItem) {
	v.value = val
	v.isSet = true
}

func (v NullableDirectoryItem) IsSet() bool {
	return v.isSet
}

func (v *NullableDirectoryItem) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDirectoryItem(val *DirectoryItem) *NullableDirectoryItem {
	return &NullableDirectoryItem{value: val, isSet: true}
}

func (v NullableDirectoryItem) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDirectoryItem) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


