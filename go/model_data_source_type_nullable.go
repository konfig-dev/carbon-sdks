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

// DataSourceTypeNullable the model 'DataSourceTypeNullable'
type DataSourceTypeNullable string

// List of DataSourceTypeNullable
const (
	DATASOURCETYPENULLABLE_GOOGLE_CLOUD_STORAGE DataSourceTypeNullable = "GOOGLE_CLOUD_STORAGE"
	DATASOURCETYPENULLABLE_GOOGLE_DRIVE DataSourceTypeNullable = "GOOGLE_DRIVE"
	DATASOURCETYPENULLABLE_NOTION DataSourceTypeNullable = "NOTION"
	DATASOURCETYPENULLABLE_NOTION_DATABASE DataSourceTypeNullable = "NOTION_DATABASE"
	DATASOURCETYPENULLABLE_INTERCOM DataSourceTypeNullable = "INTERCOM"
	DATASOURCETYPENULLABLE_DROPBOX DataSourceTypeNullable = "DROPBOX"
	DATASOURCETYPENULLABLE_ONEDRIVE DataSourceTypeNullable = "ONEDRIVE"
	DATASOURCETYPENULLABLE_SHAREPOINT DataSourceTypeNullable = "SHAREPOINT"
	DATASOURCETYPENULLABLE_CONFLUENCE DataSourceTypeNullable = "CONFLUENCE"
	DATASOURCETYPENULLABLE_BOX DataSourceTypeNullable = "BOX"
	DATASOURCETYPENULLABLE_ZENDESK DataSourceTypeNullable = "ZENDESK"
	DATASOURCETYPENULLABLE_ZOTERO DataSourceTypeNullable = "ZOTERO"
	DATASOURCETYPENULLABLE_S3 DataSourceTypeNullable = "S3"
	DATASOURCETYPENULLABLE_AZURE_BLOB_STORAGE DataSourceTypeNullable = "AZURE_BLOB_STORAGE"
	DATASOURCETYPENULLABLE_GMAIL DataSourceTypeNullable = "GMAIL"
	DATASOURCETYPENULLABLE_OUTLOOK DataSourceTypeNullable = "OUTLOOK"
	DATASOURCETYPENULLABLE_SERVICENOW DataSourceTypeNullable = "SERVICENOW"
	DATASOURCETYPENULLABLE_TEXT DataSourceTypeNullable = "TEXT"
	DATASOURCETYPENULLABLE_CSV DataSourceTypeNullable = "CSV"
	DATASOURCETYPENULLABLE_TSV DataSourceTypeNullable = "TSV"
	DATASOURCETYPENULLABLE_PDF DataSourceTypeNullable = "PDF"
	DATASOURCETYPENULLABLE_DOCX DataSourceTypeNullable = "DOCX"
	DATASOURCETYPENULLABLE_PPTX DataSourceTypeNullable = "PPTX"
	DATASOURCETYPENULLABLE_XLSX DataSourceTypeNullable = "XLSX"
	DATASOURCETYPENULLABLE_XLSM DataSourceTypeNullable = "XLSM"
	DATASOURCETYPENULLABLE_MD DataSourceTypeNullable = "MD"
	DATASOURCETYPENULLABLE_RTF DataSourceTypeNullable = "RTF"
	DATASOURCETYPENULLABLE_JSON DataSourceTypeNullable = "JSON"
	DATASOURCETYPENULLABLE_HTML DataSourceTypeNullable = "HTML"
	DATASOURCETYPENULLABLE_RAW_TEXT DataSourceTypeNullable = "RAW_TEXT"
	DATASOURCETYPENULLABLE_WEB_SCRAPE DataSourceTypeNullable = "WEB_SCRAPE"
	DATASOURCETYPENULLABLE_RSS_FEED DataSourceTypeNullable = "RSS_FEED"
	DATASOURCETYPENULLABLE_FRESHDESK DataSourceTypeNullable = "FRESHDESK"
	DATASOURCETYPENULLABLE_GITBOOK DataSourceTypeNullable = "GITBOOK"
	DATASOURCETYPENULLABLE_SALESFORCE DataSourceTypeNullable = "SALESFORCE"
	DATASOURCETYPENULLABLE_GITHUB DataSourceTypeNullable = "GITHUB"
	DATASOURCETYPENULLABLE_SLACK DataSourceTypeNullable = "SLACK"
	DATASOURCETYPENULLABLE_GURU DataSourceTypeNullable = "GURU"
	DATASOURCETYPENULLABLE_GONG DataSourceTypeNullable = "GONG"
	DATASOURCETYPENULLABLE_DOCUMENT360 DataSourceTypeNullable = "DOCUMENT360"
	DATASOURCETYPENULLABLE_JPG DataSourceTypeNullable = "JPG"
	DATASOURCETYPENULLABLE_PNG DataSourceTypeNullable = "PNG"
	DATASOURCETYPENULLABLE_JPEG DataSourceTypeNullable = "JPEG"
	DATASOURCETYPENULLABLE_MP3 DataSourceTypeNullable = "MP3"
	DATASOURCETYPENULLABLE_MP2 DataSourceTypeNullable = "MP2"
	DATASOURCETYPENULLABLE_AAC DataSourceTypeNullable = "AAC"
	DATASOURCETYPENULLABLE_WAV DataSourceTypeNullable = "WAV"
	DATASOURCETYPENULLABLE_FLAC DataSourceTypeNullable = "FLAC"
	DATASOURCETYPENULLABLE_PCM DataSourceTypeNullable = "PCM"
	DATASOURCETYPENULLABLE_M4_A DataSourceTypeNullable = "M4A"
	DATASOURCETYPENULLABLE_OGG DataSourceTypeNullable = "OGG"
	DATASOURCETYPENULLABLE_OPUS DataSourceTypeNullable = "OPUS"
	DATASOURCETYPENULLABLE_MPEG DataSourceTypeNullable = "MPEG"
	DATASOURCETYPENULLABLE_MPG DataSourceTypeNullable = "MPG"
	DATASOURCETYPENULLABLE_MP4 DataSourceTypeNullable = "MP4"
	DATASOURCETYPENULLABLE_WMV DataSourceTypeNullable = "WMV"
	DATASOURCETYPENULLABLE_AVI DataSourceTypeNullable = "AVI"
	DATASOURCETYPENULLABLE_MOV DataSourceTypeNullable = "MOV"
	DATASOURCETYPENULLABLE_MKV DataSourceTypeNullable = "MKV"
	DATASOURCETYPENULLABLE_FLV DataSourceTypeNullable = "FLV"
	DATASOURCETYPENULLABLE_WEBM DataSourceTypeNullable = "WEBM"
	DATASOURCETYPENULLABLE_EML DataSourceTypeNullable = "EML"
	DATASOURCETYPENULLABLE_MSG DataSourceTypeNullable = "MSG"
)

// All allowed values of DataSourceTypeNullable enum
var AllowedDataSourceTypeNullableEnumValues = []DataSourceTypeNullable{
	"GOOGLE_CLOUD_STORAGE",
	"GOOGLE_DRIVE",
	"NOTION",
	"NOTION_DATABASE",
	"INTERCOM",
	"DROPBOX",
	"ONEDRIVE",
	"SHAREPOINT",
	"CONFLUENCE",
	"BOX",
	"ZENDESK",
	"ZOTERO",
	"S3",
	"AZURE_BLOB_STORAGE",
	"GMAIL",
	"OUTLOOK",
	"SERVICENOW",
	"TEXT",
	"CSV",
	"TSV",
	"PDF",
	"DOCX",
	"PPTX",
	"XLSX",
	"XLSM",
	"MD",
	"RTF",
	"JSON",
	"HTML",
	"RAW_TEXT",
	"WEB_SCRAPE",
	"RSS_FEED",
	"FRESHDESK",
	"GITBOOK",
	"SALESFORCE",
	"GITHUB",
	"SLACK",
	"GURU",
	"GONG",
	"DOCUMENT360",
	"JPG",
	"PNG",
	"JPEG",
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

func (v *DataSourceTypeNullable) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := DataSourceTypeNullable(value)
	for _, existing := range AllowedDataSourceTypeNullableEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid DataSourceTypeNullable", value)
}

// NewDataSourceTypeNullableFromValue returns a pointer to a valid DataSourceTypeNullable
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewDataSourceTypeNullableFromValue(v string) (*DataSourceTypeNullable, error) {
	ev := DataSourceTypeNullable(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for DataSourceTypeNullable: valid values are %v", v, AllowedDataSourceTypeNullableEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v DataSourceTypeNullable) IsValid() bool {
	for _, existing := range AllowedDataSourceTypeNullableEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to DataSourceTypeNullable value
func (v DataSourceTypeNullable) Ptr() *DataSourceTypeNullable {
	return &v
}

type NullableDataSourceTypeNullable struct {
	value *DataSourceTypeNullable
	isSet bool
}

func (v NullableDataSourceTypeNullable) Get() *DataSourceTypeNullable {
	return v.value
}

func (v *NullableDataSourceTypeNullable) Set(val *DataSourceTypeNullable) {
	v.value = val
	v.isSet = true
}

func (v NullableDataSourceTypeNullable) IsSet() bool {
	return v.isSet
}

func (v *NullableDataSourceTypeNullable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDataSourceTypeNullable(val *DataSourceTypeNullable) *NullableDataSourceTypeNullable {
	return &NullableDataSourceTypeNullable{value: val, isSet: true}
}

func (v NullableDataSourceTypeNullable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDataSourceTypeNullable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

