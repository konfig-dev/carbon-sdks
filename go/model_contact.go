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

// Contact struct for Contact
type Contact struct {
	Title NullableString `json:"title"`
	Description NullableString `json:"description"`
	Id string `json:"id"`
	Owner NullablePartialOwnerNullable `json:"owner"`
	FirstName NullableString `json:"first_name"`
	LastName NullableString `json:"last_name"`
	Name NullableString `json:"name"`
	Department NullableString `json:"department"`
	Addresses []Address `json:"addresses"`
	PhoneNumbers []PhoneNumber `json:"phone_numbers"`
	Emails []Email `json:"emails"`
	Account NullablePartialAccountNullable `json:"account"`
	LastActivityAt NullableString `json:"last_activity_at"`
	CreatedAt string `json:"created_at"`
	UpdatedAt string `json:"updated_at"`
	IsDeleted bool `json:"is_deleted"`
	Tasks []Task `json:"tasks,omitempty"`
	Events []Event `json:"events,omitempty"`
	RemoteData map[string]interface{} `json:"remote_data"`
}

// NewContact instantiates a new Contact object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewContact(title NullableString, description NullableString, id string, owner NullablePartialOwnerNullable, firstName NullableString, lastName NullableString, name NullableString, department NullableString, addresses []Address, phoneNumbers []PhoneNumber, emails []Email, account NullablePartialAccountNullable, lastActivityAt NullableString, createdAt string, updatedAt string, isDeleted bool, remoteData map[string]interface{}) *Contact {
	this := Contact{}
	this.Title = title
	this.Description = description
	this.Id = id
	this.Owner = owner
	this.FirstName = firstName
	this.LastName = lastName
	this.Name = name
	this.Department = department
	this.Addresses = addresses
	this.PhoneNumbers = phoneNumbers
	this.Emails = emails
	this.Account = account
	this.LastActivityAt = lastActivityAt
	this.CreatedAt = createdAt
	this.UpdatedAt = updatedAt
	this.IsDeleted = isDeleted
	this.RemoteData = remoteData
	return &this
}

// NewContactWithDefaults instantiates a new Contact object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewContactWithDefaults() *Contact {
	this := Contact{}
	return &this
}

// GetTitle returns the Title field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetTitle() string {
	if o == nil || o.Title.Get() == nil {
		var ret string
		return ret
	}

	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetTitleOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// SetTitle sets field value
func (o *Contact) SetTitle(v string) {
	o.Title.Set(&v)
}

// GetDescription returns the Description field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetDescription() string {
	if o == nil || o.Description.Get() == nil {
		var ret string
		return ret
	}

	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetDescriptionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// SetDescription sets field value
func (o *Contact) SetDescription(v string) {
	o.Description.Set(&v)
}

// GetId returns the Id field value
func (o *Contact) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *Contact) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *Contact) SetId(v string) {
	o.Id = v
}

// GetOwner returns the Owner field value
// If the value is explicit nil, the zero value for PartialOwnerNullable will be returned
func (o *Contact) GetOwner() PartialOwnerNullable {
	if o == nil || o.Owner.Get() == nil {
		var ret PartialOwnerNullable
		return ret
	}

	return *o.Owner.Get()
}

// GetOwnerOk returns a tuple with the Owner field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetOwnerOk() (*PartialOwnerNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Owner.Get(), o.Owner.IsSet()
}

// SetOwner sets field value
func (o *Contact) SetOwner(v PartialOwnerNullable) {
	o.Owner.Set(&v)
}

// GetFirstName returns the FirstName field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetFirstName() string {
	if o == nil || o.FirstName.Get() == nil {
		var ret string
		return ret
	}

	return *o.FirstName.Get()
}

// GetFirstNameOk returns a tuple with the FirstName field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetFirstNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FirstName.Get(), o.FirstName.IsSet()
}

// SetFirstName sets field value
func (o *Contact) SetFirstName(v string) {
	o.FirstName.Set(&v)
}

// GetLastName returns the LastName field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetLastName() string {
	if o == nil || o.LastName.Get() == nil {
		var ret string
		return ret
	}

	return *o.LastName.Get()
}

// GetLastNameOk returns a tuple with the LastName field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetLastNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LastName.Get(), o.LastName.IsSet()
}

// SetLastName sets field value
func (o *Contact) SetLastName(v string) {
	o.LastName.Set(&v)
}

// GetName returns the Name field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetName() string {
	if o == nil || o.Name.Get() == nil {
		var ret string
		return ret
	}

	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// SetName sets field value
func (o *Contact) SetName(v string) {
	o.Name.Set(&v)
}

// GetDepartment returns the Department field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetDepartment() string {
	if o == nil || o.Department.Get() == nil {
		var ret string
		return ret
	}

	return *o.Department.Get()
}

// GetDepartmentOk returns a tuple with the Department field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetDepartmentOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Department.Get(), o.Department.IsSet()
}

// SetDepartment sets field value
func (o *Contact) SetDepartment(v string) {
	o.Department.Set(&v)
}

// GetAddresses returns the Addresses field value
func (o *Contact) GetAddresses() []Address {
	if o == nil {
		var ret []Address
		return ret
	}

	return o.Addresses
}

// GetAddressesOk returns a tuple with the Addresses field value
// and a boolean to check if the value has been set.
func (o *Contact) GetAddressesOk() ([]Address, bool) {
	if o == nil {
    return nil, false
	}
	return o.Addresses, true
}

// SetAddresses sets field value
func (o *Contact) SetAddresses(v []Address) {
	o.Addresses = v
}

// GetPhoneNumbers returns the PhoneNumbers field value
func (o *Contact) GetPhoneNumbers() []PhoneNumber {
	if o == nil {
		var ret []PhoneNumber
		return ret
	}

	return o.PhoneNumbers
}

// GetPhoneNumbersOk returns a tuple with the PhoneNumbers field value
// and a boolean to check if the value has been set.
func (o *Contact) GetPhoneNumbersOk() ([]PhoneNumber, bool) {
	if o == nil {
    return nil, false
	}
	return o.PhoneNumbers, true
}

// SetPhoneNumbers sets field value
func (o *Contact) SetPhoneNumbers(v []PhoneNumber) {
	o.PhoneNumbers = v
}

// GetEmails returns the Emails field value
func (o *Contact) GetEmails() []Email {
	if o == nil {
		var ret []Email
		return ret
	}

	return o.Emails
}

// GetEmailsOk returns a tuple with the Emails field value
// and a boolean to check if the value has been set.
func (o *Contact) GetEmailsOk() ([]Email, bool) {
	if o == nil {
    return nil, false
	}
	return o.Emails, true
}

// SetEmails sets field value
func (o *Contact) SetEmails(v []Email) {
	o.Emails = v
}

// GetAccount returns the Account field value
// If the value is explicit nil, the zero value for PartialAccountNullable will be returned
func (o *Contact) GetAccount() PartialAccountNullable {
	if o == nil || o.Account.Get() == nil {
		var ret PartialAccountNullable
		return ret
	}

	return *o.Account.Get()
}

// GetAccountOk returns a tuple with the Account field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetAccountOk() (*PartialAccountNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Account.Get(), o.Account.IsSet()
}

// SetAccount sets field value
func (o *Contact) SetAccount(v PartialAccountNullable) {
	o.Account.Set(&v)
}

// GetLastActivityAt returns the LastActivityAt field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Contact) GetLastActivityAt() string {
	if o == nil || o.LastActivityAt.Get() == nil {
		var ret string
		return ret
	}

	return *o.LastActivityAt.Get()
}

// GetLastActivityAtOk returns a tuple with the LastActivityAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetLastActivityAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LastActivityAt.Get(), o.LastActivityAt.IsSet()
}

// SetLastActivityAt sets field value
func (o *Contact) SetLastActivityAt(v string) {
	o.LastActivityAt.Set(&v)
}

// GetCreatedAt returns the CreatedAt field value
func (o *Contact) GetCreatedAt() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.CreatedAt
}

// GetCreatedAtOk returns a tuple with the CreatedAt field value
// and a boolean to check if the value has been set.
func (o *Contact) GetCreatedAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CreatedAt, true
}

// SetCreatedAt sets field value
func (o *Contact) SetCreatedAt(v string) {
	o.CreatedAt = v
}

// GetUpdatedAt returns the UpdatedAt field value
func (o *Contact) GetUpdatedAt() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UpdatedAt
}

// GetUpdatedAtOk returns a tuple with the UpdatedAt field value
// and a boolean to check if the value has been set.
func (o *Contact) GetUpdatedAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UpdatedAt, true
}

// SetUpdatedAt sets field value
func (o *Contact) SetUpdatedAt(v string) {
	o.UpdatedAt = v
}

// GetIsDeleted returns the IsDeleted field value
func (o *Contact) GetIsDeleted() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.IsDeleted
}

// GetIsDeletedOk returns a tuple with the IsDeleted field value
// and a boolean to check if the value has been set.
func (o *Contact) GetIsDeletedOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return &o.IsDeleted, true
}

// SetIsDeleted sets field value
func (o *Contact) SetIsDeleted(v bool) {
	o.IsDeleted = v
}

// GetTasks returns the Tasks field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Contact) GetTasks() []Task {
	if o == nil {
		var ret []Task
		return ret
	}
	return o.Tasks
}

// GetTasksOk returns a tuple with the Tasks field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetTasksOk() ([]Task, bool) {
	if o == nil || isNil(o.Tasks) {
    return nil, false
	}
	return o.Tasks, true
}

// HasTasks returns a boolean if a field has been set.
func (o *Contact) HasTasks() bool {
	if o != nil && isNil(o.Tasks) {
		return true
	}

	return false
}

// SetTasks gets a reference to the given []Task and assigns it to the Tasks field.
func (o *Contact) SetTasks(v []Task) {
	o.Tasks = v
}

// GetEvents returns the Events field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Contact) GetEvents() []Event {
	if o == nil {
		var ret []Event
		return ret
	}
	return o.Events
}

// GetEventsOk returns a tuple with the Events field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetEventsOk() ([]Event, bool) {
	if o == nil || isNil(o.Events) {
    return nil, false
	}
	return o.Events, true
}

// HasEvents returns a boolean if a field has been set.
func (o *Contact) HasEvents() bool {
	if o != nil && isNil(o.Events) {
		return true
	}

	return false
}

// SetEvents gets a reference to the given []Event and assigns it to the Events field.
func (o *Contact) SetEvents(v []Event) {
	o.Events = v
}

// GetRemoteData returns the RemoteData field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *Contact) GetRemoteData() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.RemoteData
}

// GetRemoteDataOk returns a tuple with the RemoteData field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Contact) GetRemoteDataOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.RemoteData) {
    return map[string]interface{}{}, false
	}
	return o.RemoteData, true
}

// SetRemoteData sets field value
func (o *Contact) SetRemoteData(v map[string]interface{}) {
	o.RemoteData = v
}

func (o Contact) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["title"] = o.Title.Get()
	}
	if true {
		toSerialize["description"] = o.Description.Get()
	}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["owner"] = o.Owner.Get()
	}
	if true {
		toSerialize["first_name"] = o.FirstName.Get()
	}
	if true {
		toSerialize["last_name"] = o.LastName.Get()
	}
	if true {
		toSerialize["name"] = o.Name.Get()
	}
	if true {
		toSerialize["department"] = o.Department.Get()
	}
	if true {
		toSerialize["addresses"] = o.Addresses
	}
	if true {
		toSerialize["phone_numbers"] = o.PhoneNumbers
	}
	if true {
		toSerialize["emails"] = o.Emails
	}
	if true {
		toSerialize["account"] = o.Account.Get()
	}
	if true {
		toSerialize["last_activity_at"] = o.LastActivityAt.Get()
	}
	if true {
		toSerialize["created_at"] = o.CreatedAt
	}
	if true {
		toSerialize["updated_at"] = o.UpdatedAt
	}
	if true {
		toSerialize["is_deleted"] = o.IsDeleted
	}
	if o.Tasks != nil {
		toSerialize["tasks"] = o.Tasks
	}
	if o.Events != nil {
		toSerialize["events"] = o.Events
	}
	if o.RemoteData != nil {
		toSerialize["remote_data"] = o.RemoteData
	}
	return json.Marshal(toSerialize)
}

type NullableContact struct {
	value *Contact
	isSet bool
}

func (v NullableContact) Get() *Contact {
	return v.value
}

func (v *NullableContact) Set(val *Contact) {
	v.value = val
	v.isSet = true
}

func (v NullableContact) IsSet() bool {
	return v.isSet
}

func (v *NullableContact) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableContact(val *Contact) *NullableContact {
	return &NullableContact{value: val, isSet: true}
}

func (v NullableContact) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableContact) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


