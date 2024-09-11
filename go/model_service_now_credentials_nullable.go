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

// ServiceNowCredentialsNullable ServiceNow credentials required to connect a ServiceNow account. The instance_subdomain can be extracted from         the url of the instance url which takes the form of \"<instance-subdomain>.service-now.com\". The client_id and client_secret are         values generated by creating a new OAuth API Integration in ServiceNow. When creating the OAuth API Integration, the redirect         uri must be \"https://api.carbon.ai/integrations/servicenow\" or a similar one using a CNAME.
type ServiceNowCredentialsNullable struct {
	InstanceSubdomain string `json:"instance_subdomain"`
	ClientId string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
	RedirectUri string `json:"redirect_uri"`
}

// NewServiceNowCredentialsNullable instantiates a new ServiceNowCredentialsNullable object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewServiceNowCredentialsNullable(instanceSubdomain string, clientId string, clientSecret string, redirectUri string) *ServiceNowCredentialsNullable {
	this := ServiceNowCredentialsNullable{}
	this.InstanceSubdomain = instanceSubdomain
	this.ClientId = clientId
	this.ClientSecret = clientSecret
	this.RedirectUri = redirectUri
	return &this
}

// NewServiceNowCredentialsNullableWithDefaults instantiates a new ServiceNowCredentialsNullable object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewServiceNowCredentialsNullableWithDefaults() *ServiceNowCredentialsNullable {
	this := ServiceNowCredentialsNullable{}
	return &this
}

// GetInstanceSubdomain returns the InstanceSubdomain field value
func (o *ServiceNowCredentialsNullable) GetInstanceSubdomain() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.InstanceSubdomain
}

// GetInstanceSubdomainOk returns a tuple with the InstanceSubdomain field value
// and a boolean to check if the value has been set.
func (o *ServiceNowCredentialsNullable) GetInstanceSubdomainOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.InstanceSubdomain, true
}

// SetInstanceSubdomain sets field value
func (o *ServiceNowCredentialsNullable) SetInstanceSubdomain(v string) {
	o.InstanceSubdomain = v
}

// GetClientId returns the ClientId field value
func (o *ServiceNowCredentialsNullable) GetClientId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientId
}

// GetClientIdOk returns a tuple with the ClientId field value
// and a boolean to check if the value has been set.
func (o *ServiceNowCredentialsNullable) GetClientIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ClientId, true
}

// SetClientId sets field value
func (o *ServiceNowCredentialsNullable) SetClientId(v string) {
	o.ClientId = v
}

// GetClientSecret returns the ClientSecret field value
func (o *ServiceNowCredentialsNullable) GetClientSecret() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientSecret
}

// GetClientSecretOk returns a tuple with the ClientSecret field value
// and a boolean to check if the value has been set.
func (o *ServiceNowCredentialsNullable) GetClientSecretOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ClientSecret, true
}

// SetClientSecret sets field value
func (o *ServiceNowCredentialsNullable) SetClientSecret(v string) {
	o.ClientSecret = v
}

// GetRedirectUri returns the RedirectUri field value
func (o *ServiceNowCredentialsNullable) GetRedirectUri() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RedirectUri
}

// GetRedirectUriOk returns a tuple with the RedirectUri field value
// and a boolean to check if the value has been set.
func (o *ServiceNowCredentialsNullable) GetRedirectUriOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.RedirectUri, true
}

// SetRedirectUri sets field value
func (o *ServiceNowCredentialsNullable) SetRedirectUri(v string) {
	o.RedirectUri = v
}

func (o ServiceNowCredentialsNullable) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
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

type NullableServiceNowCredentialsNullable struct {
	value *ServiceNowCredentialsNullable
	isSet bool
}

func (v NullableServiceNowCredentialsNullable) Get() *ServiceNowCredentialsNullable {
	return v.value
}

func (v *NullableServiceNowCredentialsNullable) Set(val *ServiceNowCredentialsNullable) {
	v.value = val
	v.isSet = true
}

func (v NullableServiceNowCredentialsNullable) IsSet() bool {
	return v.isSet
}

func (v *NullableServiceNowCredentialsNullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableServiceNowCredentialsNullable(val *ServiceNowCredentialsNullable) *NullableServiceNowCredentialsNullable {
	return &NullableServiceNowCredentialsNullable{value: val, isSet: true}
}

func (v NullableServiceNowCredentialsNullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableServiceNowCredentialsNullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

