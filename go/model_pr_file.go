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

// PRFile struct for PRFile
type PRFile struct {
	Sha string `json:"sha"`
	Filename string `json:"filename"`
	Status FileStatus `json:"status"`
	Additions int32 `json:"additions"`
	Deletions int32 `json:"deletions"`
	Changes int32 `json:"changes"`
	BlobUrl string `json:"blob_url"`
	RawUrl string `json:"raw_url"`
	ContentsUrl string `json:"contents_url"`
	RemoteData map[string]interface{} `json:"remote_data"`
}

// NewPRFile instantiates a new PRFile object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPRFile(sha string, filename string, status FileStatus, additions int32, deletions int32, changes int32, blobUrl string, rawUrl string, contentsUrl string, remoteData map[string]interface{}) *PRFile {
	this := PRFile{}
	this.Sha = sha
	this.Filename = filename
	this.Status = status
	this.Additions = additions
	this.Deletions = deletions
	this.Changes = changes
	this.BlobUrl = blobUrl
	this.RawUrl = rawUrl
	this.ContentsUrl = contentsUrl
	this.RemoteData = remoteData
	return &this
}

// NewPRFileWithDefaults instantiates a new PRFile object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPRFileWithDefaults() *PRFile {
	this := PRFile{}
	return &this
}

// GetSha returns the Sha field value
func (o *PRFile) GetSha() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Sha
}

// GetShaOk returns a tuple with the Sha field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetShaOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Sha, true
}

// SetSha sets field value
func (o *PRFile) SetSha(v string) {
	o.Sha = v
}

// GetFilename returns the Filename field value
func (o *PRFile) GetFilename() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Filename
}

// GetFilenameOk returns a tuple with the Filename field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetFilenameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Filename, true
}

// SetFilename sets field value
func (o *PRFile) SetFilename(v string) {
	o.Filename = v
}

// GetStatus returns the Status field value
func (o *PRFile) GetStatus() FileStatus {
	if o == nil {
		var ret FileStatus
		return ret
	}

	return o.Status
}

// GetStatusOk returns a tuple with the Status field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetStatusOk() (*FileStatus, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Status, true
}

// SetStatus sets field value
func (o *PRFile) SetStatus(v FileStatus) {
	o.Status = v
}

// GetAdditions returns the Additions field value
func (o *PRFile) GetAdditions() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Additions
}

// GetAdditionsOk returns a tuple with the Additions field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetAdditionsOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Additions, true
}

// SetAdditions sets field value
func (o *PRFile) SetAdditions(v int32) {
	o.Additions = v
}

// GetDeletions returns the Deletions field value
func (o *PRFile) GetDeletions() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Deletions
}

// GetDeletionsOk returns a tuple with the Deletions field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetDeletionsOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Deletions, true
}

// SetDeletions sets field value
func (o *PRFile) SetDeletions(v int32) {
	o.Deletions = v
}

// GetChanges returns the Changes field value
func (o *PRFile) GetChanges() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Changes
}

// GetChangesOk returns a tuple with the Changes field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetChangesOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Changes, true
}

// SetChanges sets field value
func (o *PRFile) SetChanges(v int32) {
	o.Changes = v
}

// GetBlobUrl returns the BlobUrl field value
func (o *PRFile) GetBlobUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.BlobUrl
}

// GetBlobUrlOk returns a tuple with the BlobUrl field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetBlobUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.BlobUrl, true
}

// SetBlobUrl sets field value
func (o *PRFile) SetBlobUrl(v string) {
	o.BlobUrl = v
}

// GetRawUrl returns the RawUrl field value
func (o *PRFile) GetRawUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RawUrl
}

// GetRawUrlOk returns a tuple with the RawUrl field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetRawUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.RawUrl, true
}

// SetRawUrl sets field value
func (o *PRFile) SetRawUrl(v string) {
	o.RawUrl = v
}

// GetContentsUrl returns the ContentsUrl field value
func (o *PRFile) GetContentsUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ContentsUrl
}

// GetContentsUrlOk returns a tuple with the ContentsUrl field value
// and a boolean to check if the value has been set.
func (o *PRFile) GetContentsUrlOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ContentsUrl, true
}

// SetContentsUrl sets field value
func (o *PRFile) SetContentsUrl(v string) {
	o.ContentsUrl = v
}

// GetRemoteData returns the RemoteData field value
// If the value is explicit nil, the zero value for map[string]interface{} will be returned
func (o *PRFile) GetRemoteData() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}

	return o.RemoteData
}

// GetRemoteDataOk returns a tuple with the RemoteData field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *PRFile) GetRemoteDataOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.RemoteData) {
    return map[string]interface{}{}, false
	}
	return o.RemoteData, true
}

// SetRemoteData sets field value
func (o *PRFile) SetRemoteData(v map[string]interface{}) {
	o.RemoteData = v
}

func (o PRFile) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["sha"] = o.Sha
	}
	if true {
		toSerialize["filename"] = o.Filename
	}
	if true {
		toSerialize["status"] = o.Status
	}
	if true {
		toSerialize["additions"] = o.Additions
	}
	if true {
		toSerialize["deletions"] = o.Deletions
	}
	if true {
		toSerialize["changes"] = o.Changes
	}
	if true {
		toSerialize["blob_url"] = o.BlobUrl
	}
	if true {
		toSerialize["raw_url"] = o.RawUrl
	}
	if true {
		toSerialize["contents_url"] = o.ContentsUrl
	}
	if o.RemoteData != nil {
		toSerialize["remote_data"] = o.RemoteData
	}
	return json.Marshal(toSerialize)
}

type NullablePRFile struct {
	value *PRFile
	isSet bool
}

func (v NullablePRFile) Get() *PRFile {
	return v.value
}

func (v *NullablePRFile) Set(val *PRFile) {
	v.value = val
	v.isSet = true
}

func (v NullablePRFile) IsSet() bool {
	return v.isSet
}

func (v *NullablePRFile) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePRFile(val *PRFile) *NullablePRFile {
	return &NullablePRFile{value: val, isSet: true}
}

func (v NullablePRFile) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePRFile) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


