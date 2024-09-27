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

// Address struct for Address
type Address struct {
	Street1 NullableString `json:"street_1"`
	Street2 NullableString `json:"street_2"`
	City NullableString `json:"city"`
	State NullableString `json:"state"`
	PostalCode NullableString `json:"postal_code"`
	Country NullableString `json:"country"`
	AddressType NullableString `json:"address_type"`
}

// NewAddress instantiates a new Address object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAddress(street1 NullableString, street2 NullableString, city NullableString, state NullableString, postalCode NullableString, country NullableString, addressType NullableString) *Address {
	this := Address{}
	this.Street1 = street1
	this.Street2 = street2
	this.City = city
	this.State = state
	this.PostalCode = postalCode
	this.Country = country
	this.AddressType = addressType
	return &this
}

// NewAddressWithDefaults instantiates a new Address object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAddressWithDefaults() *Address {
	this := Address{}
	return &this
}

// GetStreet1 returns the Street1 field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetStreet1() string {
	if o == nil || o.Street1.Get() == nil {
		var ret string
		return ret
	}

	return *o.Street1.Get()
}

// GetStreet1Ok returns a tuple with the Street1 field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetStreet1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Street1.Get(), o.Street1.IsSet()
}

// SetStreet1 sets field value
func (o *Address) SetStreet1(v string) {
	o.Street1.Set(&v)
}

// GetStreet2 returns the Street2 field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetStreet2() string {
	if o == nil || o.Street2.Get() == nil {
		var ret string
		return ret
	}

	return *o.Street2.Get()
}

// GetStreet2Ok returns a tuple with the Street2 field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetStreet2Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Street2.Get(), o.Street2.IsSet()
}

// SetStreet2 sets field value
func (o *Address) SetStreet2(v string) {
	o.Street2.Set(&v)
}

// GetCity returns the City field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetCity() string {
	if o == nil || o.City.Get() == nil {
		var ret string
		return ret
	}

	return *o.City.Get()
}

// GetCityOk returns a tuple with the City field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetCityOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.City.Get(), o.City.IsSet()
}

// SetCity sets field value
func (o *Address) SetCity(v string) {
	o.City.Set(&v)
}

// GetState returns the State field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetState() string {
	if o == nil || o.State.Get() == nil {
		var ret string
		return ret
	}

	return *o.State.Get()
}

// GetStateOk returns a tuple with the State field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetStateOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.State.Get(), o.State.IsSet()
}

// SetState sets field value
func (o *Address) SetState(v string) {
	o.State.Set(&v)
}

// GetPostalCode returns the PostalCode field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetPostalCode() string {
	if o == nil || o.PostalCode.Get() == nil {
		var ret string
		return ret
	}

	return *o.PostalCode.Get()
}

// GetPostalCodeOk returns a tuple with the PostalCode field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetPostalCodeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.PostalCode.Get(), o.PostalCode.IsSet()
}

// SetPostalCode sets field value
func (o *Address) SetPostalCode(v string) {
	o.PostalCode.Set(&v)
}

// GetCountry returns the Country field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetCountry() string {
	if o == nil || o.Country.Get() == nil {
		var ret string
		return ret
	}

	return *o.Country.Get()
}

// GetCountryOk returns a tuple with the Country field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetCountryOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Country.Get(), o.Country.IsSet()
}

// SetCountry sets field value
func (o *Address) SetCountry(v string) {
	o.Country.Set(&v)
}

// GetAddressType returns the AddressType field value
// If the value is explicit nil, the zero value for string will be returned
func (o *Address) GetAddressType() string {
	if o == nil || o.AddressType.Get() == nil {
		var ret string
		return ret
	}

	return *o.AddressType.Get()
}

// GetAddressTypeOk returns a tuple with the AddressType field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Address) GetAddressTypeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.AddressType.Get(), o.AddressType.IsSet()
}

// SetAddressType sets field value
func (o *Address) SetAddressType(v string) {
	o.AddressType.Set(&v)
}

func (o Address) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["street_1"] = o.Street1.Get()
	}
	if true {
		toSerialize["street_2"] = o.Street2.Get()
	}
	if true {
		toSerialize["city"] = o.City.Get()
	}
	if true {
		toSerialize["state"] = o.State.Get()
	}
	if true {
		toSerialize["postal_code"] = o.PostalCode.Get()
	}
	if true {
		toSerialize["country"] = o.Country.Get()
	}
	if true {
		toSerialize["address_type"] = o.AddressType.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableAddress struct {
	value *Address
	isSet bool
}

func (v NullableAddress) Get() *Address {
	return v.value
}

func (v *NullableAddress) Set(val *Address) {
	v.value = val
	v.isSet = true
}

func (v NullableAddress) IsSet() bool {
	return v.isSet
}

func (v *NullableAddress) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAddress(val *Address) *NullableAddress {
	return &NullableAddress{value: val, isSet: true}
}

func (v NullableAddress) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAddress) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

