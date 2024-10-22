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
from pydantic import BaseModel, Field, RootModel, ConfigDict

from carbon.pydantic.user_response_auto_sync_enabled_sources import UserResponseAutoSyncEnabledSources
from carbon.pydantic.user_response_unique_file_tags import UserResponseUniqueFileTags

class UserResponse(BaseModel):
    id: int = Field(alias='id')

    organization_id: int = Field(alias='organization_id')

    organization_supplied_user_id: str = Field(alias='organization_supplied_user_id')

    created_at: datetime = Field(alias='created_at')

    updated_at: datetime = Field(alias='updated_at')

    deleted_at: typing.Optional[datetime] = Field(alias='deleted_at')

    num_files_synced: int = Field(alias='num_files_synced')

    num_characters_synced: int = Field(alias='num_characters_synced')

    num_tokens_synced: int = Field(alias='num_tokens_synced')

    aggregate_file_size: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_file_size')

    aggregate_num_characters: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_num_characters')

    aggregate_num_tokens: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_num_tokens')

    aggregate_num_embeddings: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_num_embeddings')

    aggregate_num_files_by_source: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_num_files_by_source')

    aggregate_num_files_by_file_format: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='aggregate_num_files_by_file_format')

    unique_file_tags: UserResponseUniqueFileTags = Field(alias='unique_file_tags')

    enabled_features: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]] = Field(alias='enabled_features')

    custom_limits: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='custom_limits')

    auto_sync_enabled_sources: UserResponseAutoSyncEnabledSources = Field(alias='auto_sync_enabled_sources')

    connector_settings: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = Field(alias='connector_settings')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
