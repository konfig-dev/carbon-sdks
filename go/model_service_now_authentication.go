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

// ServiceNowAuthentication struct for ServiceNowAuthentication
type ServiceNowAuthentication struct {
	Source string `json:"source"`
	AccessToken string `json:"access_token"`
	RefreshToken NullableString `json:"refresh_token,omitempty"`
	InstanceSubdomain string `json:"instance_subdomain"`
	ClientId string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
	RedirectUri string `json:"redirect_uri"`
}

// NewServiceNowAuthentication instantiates a new ServiceNowAuthentication object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewServiceNowAuthentication(source string, accessToken string, instanceSubdomain string, clientId string, clientSecret string, redirectUri string) *ServiceNowAuthentication {
	this := ServiceNowAuthentication{}
	this.Source = source
	this.AccessToken = accessToken
	this.InstanceSubdomain = instanceSubdomain
	this.ClientId = clientId
	this.ClientSecret = clientSecret
	this.RedirectUri = redirectUri
	return &this
}

// NewServiceNowAuthenticationWithDefaults instantiates a new ServiceNowAuthentication object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewServiceNowAuthenticationWithDefaults() *ServiceNowAuthentication {
	this := ServiceNowAuthentication{}
	return &this
}

// GetSource returns the Source field value
func (o *ServiceNowAuthentication) GetSource() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Source
}

// GetSourceOk returns a tuple with the Source field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetSourceOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Source, true
}

// SetSource sets field value
func (o *ServiceNowAuthentication) SetSource(v string) {
	o.Source = v
}

// GetAccessToken returns the AccessToken field value
func (o *ServiceNowAuthentication) GetAccessToken() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccessToken
}

// GetAccessTokenOk returns a tuple with the AccessToken field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetAccessTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccessToken, true
}

// SetAccessToken sets field value
func (o *ServiceNowAuthentication) SetAccessToken(v string) {
	o.AccessToken = v
}

// GetRefreshToken returns the RefreshToken field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ServiceNowAuthentication) GetRefreshToken() string {
	if o == nil || isNil(o.RefreshToken.Get()) {
		var ret string
		return ret
	}
	return *o.RefreshToken.Get()
}

// GetRefreshTokenOk returns a tuple with the RefreshToken field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ServiceNowAuthentication) GetRefreshTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.RefreshToken.Get(), o.RefreshToken.IsSet()
}

// HasRefreshToken returns a boolean if a field has been set.
func (o *ServiceNowAuthentication) HasRefreshToken() bool {
	if o != nil && o.RefreshToken.IsSet() {
		return true
	}

	return false
}

// SetRefreshToken gets a reference to the given NullableString and assigns it to the RefreshToken field.
func (o *ServiceNowAuthentication) SetRefreshToken(v string) {
	o.RefreshToken.Set(&v)
}
// SetRefreshTokenNil sets the value for RefreshToken to be an explicit nil
func (o *ServiceNowAuthentication) SetRefreshTokenNil() {
	o.RefreshToken.Set(nil)
}

// UnsetRefreshToken ensures that no value is present for RefreshToken, not even an explicit nil
func (o *ServiceNowAuthentication) UnsetRefreshToken() {
	o.RefreshToken.Unset()
}

// GetInstanceSubdomain returns the InstanceSubdomain field value
func (o *ServiceNowAuthentication) GetInstanceSubdomain() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.InstanceSubdomain
}

// GetInstanceSubdomainOk returns a tuple with the InstanceSubdomain field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetInstanceSubdomainOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.InstanceSubdomain, true
}

// SetInstanceSubdomain sets field value
func (o *ServiceNowAuthentication) SetInstanceSubdomain(v string) {
	o.InstanceSubdomain = v
}

// GetClientId returns the ClientId field value
func (o *ServiceNowAuthentication) GetClientId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientId
}

// GetClientIdOk returns a tuple with the ClientId field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetClientIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ClientId, true
}

// SetClientId sets field value
func (o *ServiceNowAuthentication) SetClientId(v string) {
	o.ClientId = v
}

// GetClientSecret returns the ClientSecret field value
func (o *ServiceNowAuthentication) GetClientSecret() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientSecret
}

// GetClientSecretOk returns a tuple with the ClientSecret field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetClientSecretOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ClientSecret, true
}

// SetClientSecret sets field value
func (o *ServiceNowAuthentication) SetClientSecret(v string) {
	o.ClientSecret = v
}

// GetRedirectUri returns the RedirectUri field value
func (o *ServiceNowAuthentication) GetRedirectUri() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RedirectUri
}

// GetRedirectUriOk returns a tuple with the RedirectUri field value
// and a boolean to check if the value has been set.
func (o *ServiceNowAuthentication) GetRedirectUriOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.RedirectUri, true
}

// SetRedirectUri sets field value
func (o *ServiceNowAuthentication) SetRedirectUri(v string) {
	o.RedirectUri = v
}

func (o ServiceNowAuthentication) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["source"] = o.Source
	}
	if true {
		toSerialize["access_token"] = o.AccessToken
	}
	if o.RefreshToken.IsSet() {
		toSerialize["refresh_token"] = o.RefreshToken.Get()
	}
	if true {
		toSerialize["instance_subdomain"] = o.InstanceSubdomain
	}
	if true {
		toSerialize["client_id"] = o.ClientId
	}
	if true {
		toSerialize["client_secret"] = o.ClientSecret
	}
	if true {
		toSerialize["redirect_uri"] = o.RedirectUri
	}
	return json.Marshal(toSerialize)
}

type NullableServiceNowAuthentication struct {
	value *ServiceNowAuthentication
	isSet bool
}

func (v NullableServiceNowAuthentication) Get() *ServiceNowAuthentication {
	return v.value
}

func (v *NullableServiceNowAuthentication) Set(val *ServiceNowAuthentication) {
	v.value = val
	v.isSet = true
}

func (v NullableServiceNowAuthentication) IsSet() bool {
	return v.isSet
}

func (v *NullableServiceNowAuthentication) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableServiceNowAuthentication(val *ServiceNowAuthentication) *NullableServiceNowAuthentication {
	return &NullableServiceNowAuthentication{value: val, isSet: true}
}

func (v NullableServiceNowAuthentication) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableServiceNowAuthentication) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


