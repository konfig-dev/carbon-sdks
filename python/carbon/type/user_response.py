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

from carbon.type.user_response_auto_sync_enabled_sources import UserResponseAutoSyncEnabledSources
from carbon.type.user_response_unique_file_tags import UserResponseUniqueFileTags

class RequiredUserResponse(TypedDict):
    id: int

    organization_id: int

    organization_supplied_user_id: str

    created_at: datetime

    updated_at: datetime

    deleted_at: typing.Optional[datetime]

    num_files_synced: int

    num_characters_synced: int

    num_tokens_synced: int

    aggregate_file_size: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    aggregate_num_characters: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    aggregate_num_tokens: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    aggregate_num_embeddings: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    aggregate_num_files_by_source: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    aggregate_num_files_by_file_format: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    unique_file_tags: UserResponseUniqueFileTags

    enabled_features: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]

    custom_limits: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

    auto_sync_enabled_sources: UserResponseAutoSyncEnabledSources

    connector_settings: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class OptionalUserResponse(TypedDict, total=False):
    pass

class UserResponse(RequiredUserResponse, OptionalUserResponse):
    pass
