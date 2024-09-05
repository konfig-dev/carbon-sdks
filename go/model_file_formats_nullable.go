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

// FileFormatsNullable the model 'FileFormatsNullable'
type FileFormatsNullable string

// List of FileFormatsNullable
const (
	FILEFORMATSNULLABLE_TXT FileFormatsNullable = "TXT"
	FILEFORMATSNULLABLE_CSV FileFormatsNullable = "CSV"
	FILEFORMATSNULLABLE_TSV FileFormatsNullable = "TSV"
	FILEFORMATSNULLABLE_PDF FileFormatsNullable = "PDF"
	FILEFORMATSNULLABLE_DOCX FileFormatsNullable = "DOCX"
	FILEFORMATSNULLABLE_PPTX FileFormatsNullable = "PPTX"
	FILEFORMATSNULLABLE_XLSX FileFormatsNullable = "XLSX"
	FILEFORMATSNULLABLE_MD FileFormatsNullable = "MD"
	FILEFORMATSNULLABLE_RTF FileFormatsNullable = "RTF"
	FILEFORMATSNULLABLE_JSON FileFormatsNullable = "JSON"
	FILEFORMATSNULLABLE_HTML FileFormatsNullable = "HTML"
	FILEFORMATSNULLABLE_NOTION FileFormatsNullable = "NOTION"
	FILEFORMATSNULLABLE_GOOGLE_DOCS FileFormatsNullable = "GOOGLE_DOCS"
	FILEFORMATSNULLABLE_GOOGLE_SHEETS FileFormatsNullable = "GOOGLE_SHEETS"
	FILEFORMATSNULLABLE_GOOGLE_SLIDES FileFormatsNullable = "GOOGLE_SLIDES"
	FILEFORMATSNULLABLE_INTERCOM FileFormatsNullable = "INTERCOM"
	FILEFORMATSNULLABLE_CONFLUENCE FileFormatsNullable = "CONFLUENCE"
	FILEFORMATSNULLABLE_RSS_FEED FileFormatsNullable = "RSS_FEED"
	FILEFORMATSNULLABLE_GMAIL FileFormatsNullable = "GMAIL"
	FILEFORMATSNULLABLE_OUTLOOK FileFormatsNullable = "OUTLOOK"
	FILEFORMATSNULLABLE_ZENDESK FileFormatsNullable = "ZENDESK"
	FILEFORMATSNULLABLE_FRESHDESK FileFormatsNullable = "FRESHDESK"
	FILEFORMATSNULLABLE_WEB_SCRAPE FileFormatsNullable = "WEB_SCRAPE"
	FILEFORMATSNULLABLE_GITBOOK FileFormatsNullable = "GITBOOK"
	FILEFORMATSNULLABLE_SALESFORCE FileFormatsNullable = "SALESFORCE"
	FILEFORMATSNULLABLE_GITHUB FileFormatsNullable = "GITHUB"
	FILEFORMATSNULLABLE_SLACK FileFormatsNullable = "SLACK"
	FILEFORMATSNULLABLE_GURU FileFormatsNullable = "GURU"
	FILEFORMATSNULLABLE_SERVICENOW FileFormatsNullable = "SERVICENOW"
	FILEFORMATSNULLABLE_JPG FileFormatsNullable = "JPG"
	FILEFORMATSNULLABLE_PNG FileFormatsNullable = "PNG"
	FILEFORMATSNULLABLE_MP3 FileFormatsNullable = "MP3"
	FILEFORMATSNULLABLE_MP2 FileFormatsNullable = "MP2"
	FILEFORMATSNULLABLE_AAC FileFormatsNullable = "AAC"
	FILEFORMATSNULLABLE_WAV FileFormatsNullable = "WAV"
	FILEFORMATSNULLABLE_FLAC FileFormatsNullable = "FLAC"
	FILEFORMATSNULLABLE_PCM FileFormatsNullable = "PCM"
	FILEFORMATSNULLABLE_M4_A FileFormatsNullable = "M4A"
	FILEFORMATSNULLABLE_OGG FileFormatsNullable = "OGG"
	FILEFORMATSNULLABLE_OPUS FileFormatsNullable = "OPUS"
	FILEFORMATSNULLABLE_MPEG FileFormatsNullable = "MPEG"
	FILEFORMATSNULLABLE_MPG FileFormatsNullable = "MPG"
	FILEFORMATSNULLABLE_MP4 FileFormatsNullable = "MP4"
	FILEFORMATSNULLABLE_WMV FileFormatsNullable = "WMV"
	FILEFORMATSNULLABLE_AVI FileFormatsNullable = "AVI"
	FILEFORMATSNULLABLE_MOV FileFormatsNullable = "MOV"
	FILEFORMATSNULLABLE_MKV FileFormatsNullable = "MKV"
	FILEFORMATSNULLABLE_FLV FileFormatsNullable = "FLV"
	FILEFORMATSNULLABLE_WEBM FileFormatsNullable = "WEBM"
	FILEFORMATSNULLABLE_EML FileFormatsNullable = "EML"
	FILEFORMATSNULLABLE_MSG FileFormatsNullable = "MSG"
)

// All allowed values of FileFormatsNullable enum
var AllowedFileFormatsNullableEnumValues = []FileFormatsNullable{
	"TXT",
	"CSV",
	"TSV",
	"PDF",
	"DOCX",
	"PPTX",
	"XLSX",
	"MD",
	"RTF",
	"JSON",
	"HTML",
	"NOTION",
	"GOOGLE_DOCS",
	"GOOGLE_SHEETS",
	"GOOGLE_SLIDES",
	"INTERCOM",
	"CONFLUENCE",
	"RSS_FEED",
	"GMAIL",
	"OUTLOOK",
	"ZENDESK",
	"FRESHDESK",
	"WEB_SCRAPE",
	"GITBOOK",
	"SALESFORCE",
	"GITHUB",
	"SLACK",
	"GURU",
	"SERVICENOW",
	"JPG",
	"PNG",
	"MP3",
	"MP2",
	"AAC",
	"WAV",
	"FLAC",
	"PCM",
	"M4A",
	"OGG",
	"OPUS",
	"MPEG",
	"MPG",
	"MP4",
	"WMV",
	"AVI",
	"MOV",
	"MKV",
	"FLV",
	"WEBM",
	"EML",
	"MSG",
}

func (v *FileFormatsNullable) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := FileFormatsNullable(value)
	for _, existing := range AllowedFileFormatsNullableEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid FileFormatsNullable", value)
}

// NewFileFormatsNullableFromValue returns a pointer to a valid FileFormatsNullable
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewFileFormatsNullableFromValue(v string) (*FileFormatsNullable, error) {
	ev := FileFormatsNullable(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for FileFormatsNullable: valid values are %v", v, AllowedFileFormatsNullableEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v FileFormatsNullable) IsValid() bool {
	for _, existing := range AllowedFileFormatsNullableEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to FileFormatsNullable value
func (v FileFormatsNullable) Ptr() *FileFormatsNullable {
	return &v
}

type NullableFileFormatsNullable struct {
	value *FileFormatsNullable
	isSet bool
}

func (v NullableFileFormatsNullable) Get() *FileFormatsNullable {
	return v.value
}

func (v *NullableFileFormatsNullable) Set(val *FileFormatsNullable) {
	v.value = val
	v.isSet = true
}

func (v NullableFileFormatsNullable) IsSet() bool {
	return v.isSet
}

func (v *NullableFileFormatsNullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFileFormatsNullable(val *FileFormatsNullable) *NullableFileFormatsNullable {
	return &NullableFileFormatsNullable{value: val, isSet: true}
}

func (v NullableFileFormatsNullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFileFormatsNullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

