/*
Carbon

Connect external data to LLMs, no matter the source.

API version: 1.0.0
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package carbon

import (
	"encoding/json"
	"fmt"
)

// FileContentTypesNullable Used to filter the kind of files (e.g. `TEXT` or `IMAGE`) over which to perform the search. Also         plays a role in determining what embedding model is used to embed the query. If `IMAGE` is chosen as the media type,         then the embedding model used will be an embedding model that is not text-only, *regardless* of what value is passed         for `embedding_model`.
type FileContentTypesNullable string

// List of FileContentTypesNullable
const (
	FILECONTENTTYPESNULLABLE_TEXT FileContentTypesNullable = "TEXT"
	FILECONTENTTYPESNULLABLE_IMAGE FileContentTypesNullable = "IMAGE"
)

// All allowed values of FileContentTypesNullable enum
var AllowedFileContentTypesNullableEnumValues = []FileContentTypesNullable{
	"TEXT",
	"IMAGE",
}

func (v *FileContentTypesNullable) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := FileContentTypesNullable(value)
	for _, existing := range AllowedFileContentTypesNullableEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid FileContentTypesNullable", value)
}

// NewFileContentTypesNullableFromValue returns a pointer to a valid FileContentTypesNullable
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewFileContentTypesNullableFromValue(v string) (*FileContentTypesNullable, error) {
	ev := FileContentTypesNullable(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for FileContentTypesNullable: valid values are %v", v, AllowedFileContentTypesNullableEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v FileContentTypesNullable) IsValid() bool {
	for _, existing := range AllowedFileContentTypesNullableEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to FileContentTypesNullable value
func (v FileContentTypesNullable) Ptr() *FileContentTypesNullable {
	return &v
}

type NullableFileContentTypesNullable struct {
	value *FileContentTypesNullable
	isSet bool
}

func (v NullableFileContentTypesNullable) Get() *FileContentTypesNullable {
	return v.value
}

func (v *NullableFileContentTypesNullable) Set(val *FileContentTypesNullable) {
	v.value = val
	v.isSet = true
}

func (v NullableFileContentTypesNullable) IsSet() bool {
	return v.isSet
}

func (v *NullableFileContentTypesNullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFileContentTypesNullable(val *FileContentTypesNullable) *NullableFileContentTypesNullable {
	return &NullableFileContentTypesNullable{value: val, isSet: true}
}

func (v NullableFileContentTypesNullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFileContentTypesNullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

