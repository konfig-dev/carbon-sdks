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

// ZoteroAuthentication struct for ZoteroAuthentication
type ZoteroAuthentication struct {
	Source string `json:"source"`
	AccessToken string `json:"access_token"`
	AccessTokenSecret string `json:"access_token_secret"`
	Username string `json:"username"`
	ZoteroId string `json:"zotero_id"`
}

// NewZoteroAuthentication instantiates a new ZoteroAuthentication object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewZoteroAuthentication(source string, accessToken string, accessTokenSecret string, username string, zoteroId string) *ZoteroAuthentication {
	this := ZoteroAuthentication{}
	this.Source = source
	this.AccessToken = accessToken
	this.AccessTokenSecret = accessTokenSecret
	this.Username = username
	this.ZoteroId = zoteroId
	return &this
}

// NewZoteroAuthenticationWithDefaults instantiates a new ZoteroAuthentication object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewZoteroAuthenticationWithDefaults() *ZoteroAuthentication {
	this := ZoteroAuthentication{}
	return &this
}

// GetSource returns the Source field value
func (o *ZoteroAuthentication) GetSource() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Source
}

// GetSourceOk returns a tuple with the Source field value
// and a boolean to check if the value has been set.
func (o *ZoteroAuthentication) GetSourceOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Source, true
}

// SetSource sets field value
func (o *ZoteroAuthentication) SetSource(v string) {
	o.Source = v
}

// GetAccessToken returns the AccessToken field value
func (o *ZoteroAuthentication) GetAccessToken() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccessToken
}

// GetAccessTokenOk returns a tuple with the AccessToken field value
// and a boolean to check if the value has been set.
func (o *ZoteroAuthentication) GetAccessTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccessToken, true
}

// SetAccessToken sets field value
func (o *ZoteroAuthentication) SetAccessToken(v string) {
	o.AccessToken = v
}

// GetAccessTokenSecret returns the AccessTokenSecret field value
func (o *ZoteroAuthentication) GetAccessTokenSecret() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccessTokenSecret
}

// GetAccessTokenSecretOk returns a tuple with the AccessTokenSecret field value
// and a boolean to check if the value has been set.
func (o *ZoteroAuthentication) GetAccessTokenSecretOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccessTokenSecret, true
}

// SetAccessTokenSecret sets field value
func (o *ZoteroAuthentication) SetAccessTokenSecret(v string) {
	o.AccessTokenSecret = v
}

// GetUsername returns the Username field value
func (o *ZoteroAuthentication) GetUsername() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Username
}

// GetUsernameOk returns a tuple with the Username field value
// and a boolean to check if the value has been set.
func (o *ZoteroAuthentication) GetUsernameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Username, true
}

// SetUsername sets field value
func (o *ZoteroAuthentication) SetUsername(v string) {
	o.Username = v
}

// GetZoteroId returns the ZoteroId field value
func (o *ZoteroAuthentication) GetZoteroId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ZoteroId
}

// GetZoteroIdOk returns a tuple with the ZoteroId field value
// and a boolean to check if the value has been set.
func (o *ZoteroAuthentication) GetZoteroIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ZoteroId, true
}

// SetZoteroId sets field value
func (o *ZoteroAuthentication) SetZoteroId(v string) {
	o.ZoteroId = v
}

func (o ZoteroAuthentication) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["source"] = o.Source
	}
	if true {
		toSerialize["access_token"] = o.AccessToken
	}
	if true {
		toSerialize["access_token_secret"] = o.AccessTokenSecret
	}
	if true {
		toSerialize["username"] = o.Username
	}
	if true {
		toSerialize["zotero_id"] = o.ZoteroId
	}
	return json.Marshal(toSerialize)
}

type NullableZoteroAuthentication struct {
	value *ZoteroAuthentication
	isSet bool
}

func (v NullableZoteroAuthentication) Get() *ZoteroAuthentication {
	return v.value
}

func (v *NullableZoteroAuthentication) Set(val *ZoteroAuthentication) {
	v.value = val
	v.isSet = true
}

func (v NullableZoteroAuthentication) IsSet() bool {
	return v.isSet
}

func (v *NullableZoteroAuthentication) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableZoteroAuthentication(val *ZoteroAuthentication) *NullableZoteroAuthentication {
	return &NullableZoteroAuthentication{value: val, isSet: true}
}

func (v NullableZoteroAuthentication) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableZoteroAuthentication) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


