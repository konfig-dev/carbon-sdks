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

// OrderDirV2Nullable the model 'OrderDirV2Nullable'
type OrderDirV2Nullable string

// List of OrderDirV2Nullable
const (
	ORDERDIRV2NULLABLE_ASC OrderDirV2Nullable = "asc"
	ORDERDIRV2NULLABLE_DESC OrderDirV2Nullable = "desc"
)

// All allowed values of OrderDirV2Nullable enum
var AllowedOrderDirV2NullableEnumValues = []OrderDirV2Nullable{
	"asc",
	"desc",
}

func (v *OrderDirV2Nullable) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrderDirV2Nullable(value)
	for _, existing := range AllowedOrderDirV2NullableEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrderDirV2Nullable", value)
}

// NewOrderDirV2NullableFromValue returns a pointer to a valid OrderDirV2Nullable
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrderDirV2NullableFromValue(v string) (*OrderDirV2Nullable, error) {
	ev := OrderDirV2Nullable(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrderDirV2Nullable: valid values are %v", v, AllowedOrderDirV2NullableEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrderDirV2Nullable) IsValid() bool {
	for _, existing := range AllowedOrderDirV2NullableEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrderDirV2Nullable value
func (v OrderDirV2Nullable) Ptr() *OrderDirV2Nullable {
	return &v
}

type NullableOrderDirV2Nullable struct {
	value *OrderDirV2Nullable
	isSet bool
}

func (v NullableOrderDirV2Nullable) Get() *OrderDirV2Nullable {
	return v.value
}

func (v *NullableOrderDirV2Nullable) Set(val *OrderDirV2Nullable) {
	v.value = val
	v.isSet = true
}

func (v NullableOrderDirV2Nullable) IsSet() bool {
	return v.isSet
}

func (v *NullableOrderDirV2Nullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrderDirV2Nullable(val *OrderDirV2Nullable) *NullableOrderDirV2Nullable {
	return &NullableOrderDirV2Nullable{value: val, isSet: true}
}

func (v NullableOrderDirV2Nullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrderDirV2Nullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
