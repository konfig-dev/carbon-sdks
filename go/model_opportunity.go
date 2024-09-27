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

// Opportunity struct for Opportunity
type Opportunity struct {
	Description NullableString `json:"description"`
	Id string `json:"id"`
	Owner PartialOwner `json:"owner"`
	Name NullableString `json:"name"`
	Amount NullableInt32 `json:"amount"`
	Account NullablePartialAccountNullable `json:"account"`
	Contact NullablePartialContactNullable `json:"contact"`
	Stage NullableString `json:"stage"`
	Status NullableOpportunityStatusNullable `json:"status"`
	CloseDate NullableString `json:"close_date"`
	LastActivityAt NullableString `json:"last_activity_at"`
	CreatedAt string `json:"created_at"`
	UpdatedAt string `json:"updated_at"`
	IsDeleted bool `json:"is_deleted"`
	Tasks []Task `json:"tasks"`
	Events []Event `json:"events"`
	RemoteData map[string]interface{} `json:"remote_data"`
}

// NewOpportunity instantiates a new Opportunity object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOpportunity(description NullableString, id string, owner PartialOwner, name NullableString, amount NullableInt32, account NullablePartialAccountNullable, contact NullablePartialContactNullable, stage NullableString, status NullableOpportunityStatusNullable, closeDate NullableString, lastActivityAt NullableString, createdAt string, updatedAt string, isDeleted bool, tasks []Task, events []Event, remoteData map[string]interface{}) *Opportunity {
	this := Opportunity{}
	this.Description = description
	this.Id = id
	this.Owner = owner
	this.Name = name
	this.Amount = amount
	this.Account = account
	this.Contact = contact
	this.Stage = stage
	this.Status = status
	this.CloseDate = closeDate
	this.LastActivityAt = lastActivityAt
	this.CreatedAt = createdAt
	this.UpdatedAt = updatedAt
	this.IsDeleted = isDeleted
	this.Tasks = tasks
	this.Events = events
	this.RemoteData = remoteData
	return &this
}

// NewOpportunityWithDefaults instantiates a new Opportunity object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOpportunityWithDefaults() *Opportunity {
	this := Opportunity{}
	return &this
}

// GetDescription returns the Description field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Opportunity) GetDescription() string {
	if o == nil || o.Description.Get() == nil {
		var ret string
		return ret
	}

	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetDescriptionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// SetDescription sets field value
func (o *Opportunity) SetDescription(v string) {
	o.Description.Set(&v)
}

// GetId returns the Id field value
func (o *Opportunity) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *Opportunity) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *Opportunity) SetId(v string) {
	o.Id = v
}

// GetOwner returns the Owner field value
func (o *Opportunity) GetOwner() PartialOwner {
	if o == nil {
		var ret PartialOwner
		return ret
	}

	return o.Owner
}

// GetOwnerOk returns a tuple with the Owner field value
// and a boolean to check if the value has been set.
func (o *Opportunity) GetOwnerOk() (*PartialOwner, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Owner, true
}

// SetOwner sets field value
func (o *Opportunity) SetOwner(v PartialOwner) {
	o.Owner = v
}

// GetName returns the Name field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Opportunity) GetName() string {
	if o == nil || o.Name.Get() == nil {
		var ret string
		return ret
	}

	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// SetName sets field value
func (o *Opportunity) SetName(v string) {
	o.Name.Set(&v)
}

// GetAmount returns the Amount field value
// If the value is explicit nil, the zero value for int32 will be returned
func (o *Opportunity) GetAmount() int32 {
	if o == nil || o.Amount.Get() == nil {
		var ret int32
		return ret
	}

	return *o.Amount.Get()
}

// GetAmountOk returns a tuple with the Amount field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetAmountOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.Amount.Get(), o.Amount.IsSet()
}

// SetAmount sets field value
func (o *Opportunity) SetAmount(v int32) {
	o.Amount.Set(&v)
}

// GetAccount returns the Account field value
// If the value is explicit nil, the zero value for PartialAccountNullable will be returned
func (o *Opportunity) GetAccount() PartialAccountNullable {
	if o == nil || o.Account.Get() == nil {
		var ret PartialAccountNullable
		return ret
	}

	return *o.Account.Get()
}

// GetAccountOk returns a tuple with the Account field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetAccountOk() (*PartialAccountNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Account.Get(), o.Account.IsSet()
}

// SetAccount sets field value
func (o *Opportunity) SetAccount(v PartialAccountNullable) {
	o.Account.Set(&v)
}

// GetContact returns the Contact field value
// If the value is explicit nil, the zero value for PartialContactNullable will be returned
func (o *Opportunity) GetContact() PartialContactNullable {
	if o == nil || o.Contact.Get() == nil {
		var ret PartialContactNullable
		return ret
	}

	return *o.Contact.Get()
}

// GetContactOk returns a tuple with the Contact field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetContactOk() (*PartialContactNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Contact.Get(), o.Contact.IsSet()
}

// SetContact sets field value
func (o *Opportunity) SetContact(v PartialContactNullable) {
	o.Contact.Set(&v)
}

// GetStage returns the Stage field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Opportunity) GetStage() string {
	if o == nil || o.Stage.Get() == nil {
		var ret string
		return ret
	}

	return *o.Stage.Get()
}

// GetStageOk returns a tuple with the Stage field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetStageOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Stage.Get(), o.Stage.IsSet()
}

// SetStage sets field value
func (o *Opportunity) SetStage(v string) {
	o.Stage.Set(&v)
}

// GetStatus returns the Status field value
// If the value is explicit nil, the zero value for OpportunityStatusNullable will be returned
func (o *Opportunity) GetStatus() OpportunityStatusNullable {
	if o == nil || o.Status.Get() == nil {
		var ret OpportunityStatusNullable
		return ret
	}

	return *o.Status.Get()
}

// GetStatusOk returns a tuple with the Status field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetStatusOk() (*OpportunityStatusNullable, bool) {
	if o == nil {
    return nil, false
	}
	return o.Status.Get(), o.Status.IsSet()
}

// SetStatus sets field value
func (o *Opportunity) SetStatus(v OpportunityStatusNullable) {
	o.Status.Set(&v)
}

// GetCloseDate returns the CloseDate field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Opportunity) GetCloseDate() string {
	if o == nil || o.CloseDate.Get() == nil {
		var ret string
		return ret
	}

	return *o.CloseDate.Get()
}

// GetCloseDateOk returns a tuple with the CloseDate field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetCloseDateOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CloseDate.Get(), o.CloseDate.IsSet()
}

// SetCloseDate sets field value
func (o *Opportunity) SetCloseDate(v string) {
	o.CloseDate.Set(&v)
}

// GetLastActivityAt returns the LastActivityAt field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Opportunity) GetLastActivityAt() string {
	if o == nil || o.LastActivityAt.Get() == nil {
		var ret string
		return ret
	}

	return *o.LastActivityAt.Get()
}

// GetLastActivityAtOk returns a tuple with the LastActivityAt field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetLastActivityAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LastActivityAt.Get(), o.LastActivityAt.IsSet()
}

// SetLastActivityAt sets field value
func (o *Opportunity) SetLastActivityAt(v string) {
	o.LastActivityAt.Set(&v)
}

// GetCreatedAt returns the CreatedAt field value
func (o *Opportunity) GetCreatedAt() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.CreatedAt
}

// GetCreatedAtOk returns a tuple with the CreatedAt field value
// and a boolean to check if the value has been set.
func (o *Opportunity) GetCreatedAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CreatedAt, true
}

// SetCreatedAt sets field value
func (o *Opportunity) SetCreatedAt(v string) {
	o.CreatedAt = v
}

// GetUpdatedAt returns the UpdatedAt field value
func (o *Opportunity) GetUpdatedAt() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UpdatedAt
}

// GetUpdatedAtOk returns a tuple with the UpdatedAt field value
// and a boolean to check if the value has been set.
func (o *Opportunity) GetUpdatedAtOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UpdatedAt, true
}

// SetUpdatedAt sets field value
func (o *Opportunity) SetUpdatedAt(v string) {
	o.UpdatedAt = v
}

// GetIsDeleted returns the IsDeleted field value
func (o *Opportunity) GetIsDeleted() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.IsDeleted
}

// GetIsDeletedOk returns a tuple with the IsDeleted field value
// and a boolean to check if the value has been set.
func (o *Opportunity) GetIsDeletedOk() (*bool, bool) {
	if o == nil {
    return nil, false
	}
	return &o.IsDeleted, true
}

// SetIsDeleted sets field value
func (o *Opportunity) SetIsDeleted(v bool) {
	o.IsDeleted = v
}

// GetTasks returns the Tasks field value
// If the value is explicit nil, the zero value for []Task will be returned
func (o *Opportunity) GetTasks() []Task {
	if o == nil {
		var ret []Task
		return ret
	}

	return o.Tasks
}

// GetTasksOk returns a tuple with the Tasks field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetTasksOk() ([]Task, bool) {
	if o == nil || isNil(o.Tasks) {
    return nil, false
	}
	return o.Tasks, true
}

// SetTasks sets field value
func (o *Opportunity) SetTasks(v []Task) {
	o.Tasks = v
}

// GetEvents returns the Events field value
// If the value is explicit nil, the zero value for []Event will be returned
func (o *Opportunity) GetEvents() []Event {
	if o == nil {
		var ret []Event
		return ret
	}

	return o.Events
}

// GetEventsOk returns a tuple with the Events field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetEventsOk() ([]Event, bool) {
	if o == nil || isNil(o.Events) {
    return nil, false
	}
	return o.Events, true
}

// SetEvents sets field value
func (o *Opportunity) SetEvents(v []Event) {
	o.Events = v
}

// GetRemoteData returns the RemoteData field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *Opportunity) GetRemoteData() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.RemoteData
}

// GetRemoteDataOk returns a tuple with the RemoteData field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Opportunity) GetRemoteDataOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.RemoteData) {
    return map[string]interface{}{}, false
	}
	return o.RemoteData, true
}

// SetRemoteData sets field value
func (o *Opportunity) SetRemoteData(v map[string]interface{}) {
	o.RemoteData = v
}

func (o Opportunity) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["description"] = o.Description.Get()
	}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["owner"] = o.Owner
	}
	if true {
		toSerialize["name"] = o.Name.Get()
	}
	if true {
		toSerialize["amount"] = o.Amount.Get()
	}
	if true {
		toSerialize["account"] = o.Account.Get()
	}
	if true {
		toSerialize["contact"] = o.Contact.Get()
	}
	if true {
		toSerialize["stage"] = o.Stage.Get()
	}
	if true {
		toSerialize["status"] = o.Status.Get()
	}
	if true {
		toSerialize["close_date"] = o.CloseDate.Get()
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

type NullableOpportunity struct {
	value *Opportunity
	isSet bool
}

func (v NullableOpportunity) Get() *Opportunity {
	return v.value
}

func (v *NullableOpportunity) Set(val *Opportunity) {
	v.value = val
	v.isSet = true
}

func (v NullableOpportunity) IsSet() bool {
	return v.isSet
}

func (v *NullableOpportunity) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOpportunity(val *Opportunity) *NullableOpportunity {
	return &NullableOpportunity{value: val, isSet: true}
}

func (v NullableOpportunity) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOpportunity) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

