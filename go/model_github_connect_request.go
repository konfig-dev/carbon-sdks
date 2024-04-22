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

// GithubConnectRequest struct for GithubConnectRequest
type GithubConnectRequest struct {
	Username string `json:"username"`
	AccessToken string `json:"access_token"`
}

// NewGithubConnectRequest instantiates a new GithubConnectRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubConnectRequest(username string, accessToken string) *GithubConnectRequest {
	this := GithubConnectRequest{}
	this.Username = username
	this.AccessToken = accessToken
	return &this
}

// NewGithubConnectRequestWithDefaults instantiates a new GithubConnectRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubConnectRequestWithDefaults() *GithubConnectRequest {
	this := GithubConnectRequest{}
	return &this
}

// GetUsername returns the Username field value
func (o *GithubConnectRequest) GetUsername() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Username
}

// GetUsernameOk returns a tuple with the Username field value
// and a boolean to check if the value has been set.
func (o *GithubConnectRequest) GetUsernameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Username, true
}

// SetUsername sets field value
func (o *GithubConnectRequest) SetUsername(v string) {
	o.Username = v
}

// GetAccessToken returns the AccessToken field value
func (o *GithubConnectRequest) GetAccessToken() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccessToken
}

// GetAccessTokenOk returns a tuple with the AccessToken field value
// and a boolean to check if the value has been set.
func (o *GithubConnectRequest) GetAccessTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccessToken, true
}

// SetAccessToken sets field value
func (o *GithubConnectRequest) SetAccessToken(v string) {
	o.AccessToken = v
}

func (o GithubConnectRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["username"] = o.Username
	}
	if true {
		toSerialize["access_token"] = o.AccessToken
	}
	return json.Marshal(toSerialize)
}

type NullableGithubConnectRequest struct {
	value *GithubConnectRequest
	isSet bool
}

func (v NullableGithubConnectRequest) Get() *GithubConnectRequest {
	return v.value
}

func (v *NullableGithubConnectRequest) Set(val *GithubConnectRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubConnectRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubConnectRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubConnectRequest(val *GithubConnectRequest) *NullableGithubConnectRequest {
	return &NullableGithubConnectRequest{value: val, isSet: true}
}

func (v NullableGithubConnectRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubConnectRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

