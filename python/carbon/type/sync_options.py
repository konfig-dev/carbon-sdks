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

from carbon.type.embedding_generators_nullable import EmbeddingGeneratorsNullable
from carbon.type.file_sync_config_nullable import FileSyncConfigNullable

class RequiredSyncOptions(TypedDict):
    pass

class OptionalSyncOptions(TypedDict, total=False):
    tags: typing.Union[bool, date, datetime, dict, float, int, list, str, None]

    chunk_size: typing.Optional[int]

    chunk_overlap: typing.Optional[int]

    skip_embedding_generation: typing.Optional[bool]

    embedding_model: typing.Optional[EmbeddingGeneratorsNullable]

    generate_sparse_vectors: typing.Optional[bool]

    prepend_filename_to_chunks: typing.Optional[bool]

    # Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    max_items_per_chunk: typing.Optional[int]

    # Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
    sync_files_on_connection: typing.Optional[bool]

    set_page_as_boundary: bool

    request_id: typing.Optional[str]

    enable_file_picker: bool

    # Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    sync_source_items: bool

    # Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    incremental_sync: bool

    file_sync_config: typing.Optional[FileSyncConfigNullable]

    # Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.
    automatically_open_file_picker: typing.Optional[bool]

    # Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    data_source_tags: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class SyncOptions(RequiredSyncOptions, OptionalSyncOptions):
    pass
