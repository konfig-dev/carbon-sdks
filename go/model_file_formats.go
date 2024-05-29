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

// FileFormats the model 'FileFormats'
type FileFormats string

// List of FileFormats
const (
	FILEFORMATS_TXT FileFormats = "TXT"
	FILEFORMATS_CSV FileFormats = "CSV"
	FILEFORMATS_TSV FileFormats = "TSV"
	FILEFORMATS_PDF FileFormats = "PDF"
	FILEFORMATS_DOCX FileFormats = "DOCX"
	FILEFORMATS_PPTX FileFormats = "PPTX"
	FILEFORMATS_XLSX FileFormats = "XLSX"
	FILEFORMATS_MD FileFormats = "MD"
	FILEFORMATS_RTF FileFormats = "RTF"
	FILEFORMATS_JSON FileFormats = "JSON"
	FILEFORMATS_HTML FileFormats = "HTML"
	FILEFORMATS_NOTION FileFormats = "NOTION"
	FILEFORMATS_GOOGLE_DOCS FileFormats = "GOOGLE_DOCS"
	FILEFORMATS_GOOGLE_SHEETS FileFormats = "GOOGLE_SHEETS"
	FILEFORMATS_GOOGLE_SLIDES FileFormats = "GOOGLE_SLIDES"
	FILEFORMATS_INTERCOM FileFormats = "INTERCOM"
	FILEFORMATS_CONFLUENCE FileFormats = "CONFLUENCE"
	FILEFORMATS_RSS_FEED FileFormats = "RSS_FEED"
	FILEFORMATS_GMAIL FileFormats = "GMAIL"
	FILEFORMATS_OUTLOOK FileFormats = "OUTLOOK"
	FILEFORMATS_ZENDESK FileFormats = "ZENDESK"
	FILEFORMATS_FRESHDESK FileFormats = "FRESHDESK"
	FILEFORMATS_WEB_SCRAPE FileFormats = "WEB_SCRAPE"
	FILEFORMATS_GITBOOK FileFormats = "GITBOOK"
	FILEFORMATS_SALESFORCE FileFormats = "SALESFORCE"
	FILEFORMATS_GITHUB FileFormats = "GITHUB"
	FILEFORMATS_JPG FileFormats = "JPG"
	FILEFORMATS_PNG FileFormats = "PNG"
	FILEFORMATS_MP3 FileFormats = "MP3"
	FILEFORMATS_MP2 FileFormats = "MP2"
	FILEFORMATS_AAC FileFormats = "AAC"
	FILEFORMATS_WAV FileFormats = "WAV"
	FILEFORMATS_FLAC FileFormats = "FLAC"
	FILEFORMATS_PCM FileFormats = "PCM"
	FILEFORMATS_M4_A FileFormats = "M4A"
	FILEFORMATS_OGG FileFormats = "OGG"
	FILEFORMATS_OPUS FileFormats = "OPUS"
	FILEFORMATS_MPEG FileFormats = "MPEG"
	FILEFORMATS_MPG FileFormats = "MPG"
	FILEFORMATS_MP4 FileFormats = "MP4"
	FILEFORMATS_WMV FileFormats = "WMV"
	FILEFORMATS_AVI FileFormats = "AVI"
	FILEFORMATS_MOV FileFormats = "MOV"
	FILEFORMATS_MKV FileFormats = "MKV"
	FILEFORMATS_FLV FileFormats = "FLV"
	FILEFORMATS_WEBM FileFormats = "WEBM"
)

// All allowed values of FileFormats enum
var AllowedFileFormatsEnumValues = []FileFormats{
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
}

func (v *FileFormats) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := FileFormats(value)
	for _, existing := range AllowedFileFormatsEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid FileFormats", value)
}

// NewFileFormatsFromValue returns a pointer to a valid FileFormats
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewFileFormatsFromValue(v string) (*FileFormats, error) {
	ev := FileFormats(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for FileFormats: valid values are %v", v, AllowedFileFormatsEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v FileFormats) IsValid() bool {
	for _, existing := range AllowedFileFormatsEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to FileFormats value
func (v FileFormats) Ptr() *FileFormats {
	return &v
}

type NullableFileFormats struct {
	value *FileFormats
	isSet bool
}

func (v NullableFileFormats) Get() *FileFormats {
	return v.value
}

func (v *NullableFileFormats) Set(val *FileFormats) {
	v.value = val
	v.isSet = true
}

func (v NullableFileFormats) IsSet() bool {
	return v.isSet
}

func (v *NullableFileFormats) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFileFormats(val *FileFormats) *NullableFileFormats {
	return &NullableFileFormats{value: val, isSet: true}
}

func (v NullableFileFormats) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFileFormats) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

