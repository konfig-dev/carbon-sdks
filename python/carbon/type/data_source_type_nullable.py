# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING


DataSourceTypeNullable = Literal["GOOGLE_CLOUD_STORAGE", "GOOGLE_DRIVE", "NOTION", "NOTION_DATABASE", "INTERCOM", "DROPBOX", "ONEDRIVE", "SHAREPOINT", "CONFLUENCE", "BOX", "ZENDESK", "ZOTERO", "S3", "AZURE_BLOB_STORAGE", "GMAIL", "OUTLOOK", "SERVICENOW", "TEXT", "CSV", "TSV", "PDF", "DOCX", "PPTX", "XLSX", "XLSM", "MD", "RTF", "JSON", "HTML", "RAW_TEXT", "WEB_SCRAPE", "RSS_FEED", "FRESHDESK", "GITBOOK", "SALESFORCE", "GITHUB", "SLACK", "GURU", "GONG", "DOCUMENT360", "JPG", "PNG", "JPEG", "MP3", "MP2", "AAC", "WAV", "FLAC", "PCM", "M4A", "OGG", "OPUS", "MPEG", "MPG", "MP4", "WMV", "AVI", "MOV", "MKV", "FLV", "WEBM", "EML", "MSG"]
